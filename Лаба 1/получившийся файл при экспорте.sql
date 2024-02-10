PGDMP         !            	    z            zad_1(ver1.1)    14.5    14.5     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16587    zad_1(ver1.1)    DATABASE     l   CREATE DATABASE "zad_1(ver1.1)" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1251';
    DROP DATABASE "zad_1(ver1.1)";
                postgres    false            �            1259    16602    faculty    TABLE     �   CREATE TABLE public.faculty (
    faculty_id integer NOT NULL,
    faculty text NOT NULL,
    fk_university_id integer NOT NULL
);
    DROP TABLE public.faculty;
       public         heap    postgres    false            �            1259    16614    student    TABLE     �   CREATE TABLE public.student (
    student_id integer NOT NULL,
    surname text NOT NULL,
    name text NOT NULL,
    patronymic text NOT NULL,
    fk_faculty_id integer NOT NULL
);
    DROP TABLE public.student;
       public         heap    postgres    false            �            1259    16595 
   university    TABLE     e   CREATE TABLE public.university (
    university_id integer NOT NULL,
    university text NOT NULL
);
    DROP TABLE public.university;
       public         heap    postgres    false            �          0    16602    faculty 
   TABLE DATA           H   COPY public.faculty (faculty_id, faculty, fk_university_id) FROM stdin;
    public          postgres    false    210   ;       �          0    16614    student 
   TABLE DATA           W   COPY public.student (student_id, surname, name, patronymic, fk_faculty_id) FROM stdin;
    public          postgres    false    211   x       �          0    16595 
   university 
   TABLE DATA           ?   COPY public.university (university_id, university) FROM stdin;
    public          postgres    false    209          f           2606    16608    faculty faculty_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.faculty
    ADD CONSTRAINT faculty_pkey PRIMARY KEY (faculty_id);
 >   ALTER TABLE ONLY public.faculty DROP CONSTRAINT faculty_pkey;
       public            postgres    false    210            h           2606    16620    student student_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_pkey PRIMARY KEY (student_id);
 >   ALTER TABLE ONLY public.student DROP CONSTRAINT student_pkey;
       public            postgres    false    211            d           2606    16601    university university_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.university
    ADD CONSTRAINT university_pkey PRIMARY KEY (university_id);
 D   ALTER TABLE ONLY public.university DROP CONSTRAINT university_pkey;
       public            postgres    false    209            i           2606    16609 %   faculty faculty_fk_university_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.faculty
    ADD CONSTRAINT faculty_fk_university_id_fkey FOREIGN KEY (fk_university_id) REFERENCES public.university(university_id);
 O   ALTER TABLE ONLY public.faculty DROP CONSTRAINT faculty_fk_university_id_fkey;
       public          postgres    false    3172    210    209            j           2606    16621 "   student student_fk_faculty_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_fk_faculty_id_fkey FOREIGN KEY (fk_faculty_id) REFERENCES public.faculty(faculty_id);
 L   ALTER TABLE ONLY public.student DROP CONSTRAINT student_fk_faculty_id_fkey;
       public          postgres    false    211    210    3174            �   -   x�3�0���K���8��8/,�0��t 9��,�@� ��      �      x�U�;�@Dk�0�Xr�hhU�N�
 ��^a�F�!���%��x�L���Xb��/�k��	^�m���^V����Z�2�E�m�tL/1��Đӧ���7�X�q�wZ�<F���⡪'����      �      x�3�0���s/̸��+F��� Y-     