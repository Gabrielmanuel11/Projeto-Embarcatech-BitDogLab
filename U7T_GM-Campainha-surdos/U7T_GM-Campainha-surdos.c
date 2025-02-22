#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <ctype.h>
#include "pico/stdlib.h"
#include "pico/binary_info.h"
#include "inc/ssd1306.h"
#include "hardware/i2c.h"

const uint I2C_SDA = 14;
const uint I2C_SCL = 15;
const uint BUTTON_PIN = 5; // Botão A (GPIO 5)
const uint LED_PIN = 12;    // LED
const uint BUZZER_PIN = 21; // Buzzer

int main()
{
    stdio_init_all();   // Inicializa os tipos stdio padrão presentes ligados ao binário

    // Inicialização do i2c
    i2c_init(i2c1, ssd1306_i2c_clock * 1000);
    gpio_set_function(I2C_SDA, GPIO_FUNC_I2C);
    gpio_set_function(I2C_SCL, GPIO_FUNC_I2C);
    gpio_pull_up(I2C_SDA);
    gpio_pull_up(I2C_SCL);

    // Configurar pinos de LED e buzzer
    gpio_init(LED_PIN);
    gpio_set_dir(LED_PIN, GPIO_OUT);
    gpio_init(BUZZER_PIN);
    gpio_set_dir(BUZZER_PIN, GPIO_OUT);
    gpio_init(BUTTON_PIN);
    gpio_set_dir(BUTTON_PIN, GPIO_IN);
    gpio_pull_up(BUTTON_PIN); // Habilitar pull-up no botão

    // Processo de inicialização completo do OLED SSD1306
    ssd1306_init();

    // Preparar área de renderização para o display
    struct render_area frame_area = {
        start_column : 0,
        end_column : ssd1306_width - 1,
        start_page : 0,
        end_page : ssd1306_n_pages - 1
    };

    calculate_render_area_buffer_length(&frame_area);

    // zera o display
    uint8_t ssd[ssd1306_buffer_length];
    memset(ssd, 0, ssd1306_buffer_length);
    render_on_display(ssd, &frame_area);

    // Loop principal
    while (1)
    {
        if (!gpio_get(BUTTON_PIN))  // Se o botão for pressionado
        {
            // Mensagem inicial
            char *text[] = {
                "  Campainha   ",
                "  Tocando!    "};
            
            int y = 0;
            for (uint i = 0; i < count_of(text); i++)
            {
                ssd1306_draw_string(ssd, 5, y, text[i]);
                y += 8;
            }
            render_on_display(ssd, &frame_area);

            // Acender o LED por 15 segundos
            gpio_put(LED_PIN, 1); // Acende o LED
            sleep_ms(15000); // Espera por 15 segundos
            gpio_put(LED_PIN, 0); // Apaga o LED

            // Emitir som do buzzer por 15 segundos
            gpio_put(BUZZER_PIN, 1); // Liga o buzzer
            sleep_ms(15000); // Espera por 15 segundos
            gpio_put(BUZZER_PIN, 0); // Desliga o buzzer
        }

        sleep_ms(100); // Aguarda um tempo para evitar leituras excessivas
    }
}

