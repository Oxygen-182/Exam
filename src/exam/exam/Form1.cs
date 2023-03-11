using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Reflection.Emit;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace exam
{
    public partial class Form1 : Form
    {
        double x;
        double y;
        string filePath;
        string fileName;
        public Form1()
        {
            InitializeComponent();
            xValueBox.Visible = false;
            yValueBox.Visible = false;
            answerButton.Visible = false;
            labelx.Visible = false;
            labely.Visible = false;
            toolStripLabel1.Visible = false;
        }

        private void открытьToolStripMenuItem_Click(object sender, EventArgs e)
        {
            OpenFileDialog openFileDialog = new OpenFileDialog();
            openFileDialog.Filter = "HTML Document (*.html)|*.html";
            if (openFileDialog.ShowDialog() == DialogResult.Cancel) return;
            filePath = openFileDialog.FileName;
            fileName = openFileDialog.SafeFileName;
            webBrowser1.Navigate(filePath);
            xValueBox.Visible = true;
            yValueBox.Visible = true;
            answerButton.Visible = true;
            labelx.Visible = true;
            labely.Visible = true;
            toolStripLabel1.Visible = true;
            toolStripLabel1.Text = "Строка статуса";
            this.Size = new Size(1075, 740);
        }

        private void оПрограммеToolStripMenuItem_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Автор работы: Родионов Юрий Русланович\nГруппа: ПКсп-120\nВариант: 10");
        }

        private void выходToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void answerButton_Click(object sender, EventArgs e)
        {
            if (fileName == "pageWithTask1.html")
            {
                if (!double.TryParse(xValueBox.Text, out x))
                {
                    MessageBox.Show("В поле ввода координаты X введены неверные данные", "Ошибка", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
                if (!double.TryParse(yValueBox.Text, out y))
                {
                    MessageBox.Show("В поле ввода координаты Y введены неверные данные", "Ошибка", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }

                x = double.Parse(xValueBox.Text);
                y = double.Parse(yValueBox.Text);

                if (y < Math.Sin(x) && y < 0.5 && x > 0)
                {
                    MessageBox.Show("Точка находится внутри заштрихованной области");
                    toolStripLabel1.Text = "Точка находится внутри заштрихованной области";
                }
                else if (y > Math.Sin(x) || y > 0.5 || x < 0)
                {
                    MessageBox.Show("Точка находится вне заштрихованной области!");
                    toolStripLabel1.Text = "Точка находится на границе заштрихованной области";
                }
                else
                {
                    MessageBox.Show("Точка находится на границе заштрихованной области");
                    toolStripLabel1.Text = "Точка находится на границе заштрихованной области";
                }
            }
            else if (fileName == "pageWithTask2.html")
            {
                if (!double.TryParse(xValueBox.Text, out x))
                {
                    MessageBox.Show("В поле ввода координаты X введены неверные данные", "Ошибка", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
                if (!double.TryParse(yValueBox.Text, out y))
                {
                    MessageBox.Show("В поле ввода координаты Y введены неверные данные", "Ошибка", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }

                x = double.Parse(xValueBox.Text);
                y = double.Parse(yValueBox.Text);

                if (y > 0 && y > (-x / 0.5) + 4 && x > 0 && y < (-x + 6))
                {
                    MessageBox.Show("Точка находится внутри заштрихованной области");
                    toolStripLabel1.Text = "Точка находится внутри заштрихованной области";
                }
                else if (y < 0 || y < (-x / 0.5) + 4 || x < 0 || y > (-x + 6))
                {
                    MessageBox.Show("Точка находится вне заштрихованной области");
                    toolStripLabel1.Text = "Точка находится вне заштрихованной области";
                }
                else
                {
                    MessageBox.Show("Точка находится на границе заштрихованной области");
                    toolStripLabel1.Text = "Точка находится на границе заштрихованной области";
                }
            }
        }
    }
}
