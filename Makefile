all: compile-resume compile-cv compile-list

compile-resume:
	typst compile resume.typ Borys_Kopeć_resume.pdf

compile-cv:
	typst compile curriculum_vitae.typ Borys_Kopeć_curriculum_vitae.pdf

compile-list:
	typst compile list_motywacyjny.typ Borys_Kopeć_list_motywacyjny.pdf
