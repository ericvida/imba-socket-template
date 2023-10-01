import { verify } from 'crypto'
import os from 'socket:os'

tag x-counter
	count = 0
	def add
		count++
		imba.commit!
	def subt
		count--
		imba.commit!
	<self>
		css d:hflex
			gap:5px
		<button @click.subt> "-"
		<code> count
		<button @click.add> "+"
tag imba-app
	css c:blue5
	<self> 
		<code> "Imba + Socket"
		<x-counter>

imba.mount <imba-app>