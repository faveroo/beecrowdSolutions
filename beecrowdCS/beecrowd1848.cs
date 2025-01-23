using System; 

class URI {

    static void Main(string[] args) { 
        int qtd = 0;

        while (qtd < 3)
        {
            int soma = 0;
            string entrada = Console.ReadLine();

            while (entrada != "caw caw")
            {
                int decimalValue = ConvertBlinkToDecimal(entrada);
                soma += decimalValue;
                entrada = Console.ReadLine();
            }

            Console.WriteLine(soma);
            qtd++;
        }
    }

    static int ConvertBlinkToDecimal(string blink)
    {
        string binarySequence = "";

        foreach (char carac in blink)
        {
            if (carac == '-')
            {
                binarySequence += '0';
            }
            else
            {
                binarySequence += '1';
            }
        }

        return Convert.ToInt32(binarySequence, 2);
    }

    }

