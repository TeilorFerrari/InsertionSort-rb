def insertion_sort(array)
    final = [array[0]]										#final recebe o array que recebido como parametro pela funçao
    array.delete_at(0)
    for i in array                                          #for vai fazer i percorrer o array
        final_index = 0										#
        while final_index < final.length                    # o while vai de 0 ate o tamanho da a array verificando se o valor
            if i <= final[final_index]						# do indice é menor ou maior que o valor na ultima posicao, se for menor ele coloca antes caso contrario ele 
                final.insert(final_index,i)					# cola o valor na ultima posicao 
                break
            elsif final_index == final.length-1
                final.insert(final_index+1,i)
                break
            end
            final_index+=1
        end
    end
    final                                                   #retorna o array classificado e 
end                                                         # conclui a funcao de ordenaçao
 
n=0;				
j=1000;

for k in 0...11						#percorre 10 vezes cada valor de J
	minhaarray = Array.new			#instancia um array

	for w in 0...10 					
		for n in 0...                   
			minhaarray[n] = rand(1000)- rand(1000)		#atribui valores aleatorios na array
		end

		start = Time.now								#inicia a contagem do tempo
		minhaarray = insertion_sort(minhaarray);		#chama a funcao insertion_sort e passa como parametro a array criada para ordenar
		finish = Time.now								#termina a contagem o tempo

		result = finish - start							#result recebe o tempo exato de cada lop de ordenaçao
		printf "-----------"
		print "\n"
		print j 										#printa em qual valor o j ta e logo apos o tempo de execuçao de ordenaçao para um vetor do tamanho de j
		print " \n tempo: "
		print result
		print "\n"
		print "-----------"
	end
	if (k==0)											#um controle para saber se j deve começar com tamanho 1000 e 
		j=j+4000										#logo apos executar as 10 vezes o lop com o vetor de damanho 1000 adiciona 4 mil para a proxia executao
	else												#apos executar com 5 mil unidades o algoritmo vai aumentando de 5 em 5 mil a cada vez que concluir as 10 execuçoes do mesmo j
		j=j+5000
	end
end




