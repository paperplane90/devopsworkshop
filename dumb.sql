PGDMP     5                    w            peopleDatabase    9.6.10    11.2     �
           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �
           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �
           1262    16408    peopleDatabase    DATABASE     �   CREATE DATABASE "peopleDatabase" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF8' LC_CTYPE = 'en_US.UTF8';
     DROP DATABASE "peopleDatabase";
             cloudsqlsuperuser    false            �
           0    0    SCHEMA public    ACL     �   REVOKE ALL ON SCHEMA public FROM cloudsqladmin;
REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO cloudsqlsuperuser;
GRANT ALL ON SCHEMA public TO PUBLIC;
                  cloudsqlsuperuser    false    3            �            1259    16422 
   peopleinfo    TABLE     �   CREATE TABLE public.peopleinfo (
    id integer NOT NULL,
    name character varying(256) NOT NULL,
    birthday character varying(256),
    occupation character varying(256)
);
    DROP TABLE public.peopleinfo;
       public         sqluser    false            �            1259    16425    peopleinfo_id_seq    SEQUENCE     z   CREATE SEQUENCE public.peopleinfo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.peopleinfo_id_seq;
       public       sqluser    false    185            �
           0    0    peopleinfo_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.peopleinfo_id_seq OWNED BY public.peopleinfo.id;
            public       sqluser    false    186            #
           2604    16427    peopleinfo id    DEFAULT     n   ALTER TABLE ONLY public.peopleinfo ALTER COLUMN id SET DEFAULT nextval('public.peopleinfo_id_seq'::regclass);
 <   ALTER TABLE public.peopleinfo ALTER COLUMN id DROP DEFAULT;
       public       sqluser    false    186    185            �
          0    16422 
   peopleinfo 
   TABLE DATA               D   COPY public.peopleinfo (id, name, birthday, occupation) FROM stdin;
    public       sqluser    false    185   �       �
           0    0    peopleinfo_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.peopleinfo_id_seq', 1, false);
            public       sqluser    false    186            %
           2606    16435    peopleinfo peopleinfo_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.peopleinfo
    ADD CONSTRAINT peopleinfo_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.peopleinfo DROP CONSTRAINT peopleinfo_pkey;
       public         sqluser    false    185            �
      x������ � �     