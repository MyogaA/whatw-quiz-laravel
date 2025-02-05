PGDMP                     
    {            db_quiz_whatw    15.4    15.4 !               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                        0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            !           1262    16524    db_quiz_whatw    DATABASE     �   CREATE DATABASE db_quiz_whatw WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE db_quiz_whatw;
                postgres    false            �            1259    16614    avatar    TABLE     �   CREATE TABLE public.avatar (
    id integer NOT NULL,
    image character varying NOT NULL,
    price integer NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL
);
    DROP TABLE public.avatar;
       public         heap    postgres    false            �            1259    16613    avatar_id_seq    SEQUENCE     �   CREATE SEQUENCE public.avatar_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.avatar_id_seq;
       public          postgres    false    221            "           0    0    avatar_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.avatar_id_seq OWNED BY public.avatar.id;
          public          postgres    false    220            �            1259    16594 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    "timestamp" bigint NOT NULL,
    name character varying NOT NULL
);
    DROP TABLE public.migrations;
       public         heap    postgres    false            �            1259    16593    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public          postgres    false    217            #           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public          postgres    false    216            �            1259    16575    quizzes    TABLE     �  CREATE TABLE public.quizzes (
    id bigint NOT NULL,
    difficulty character varying(255) NOT NULL,
    question character varying(255) NOT NULL,
    correct_answer character varying(255) NOT NULL,
    incorrect_answer1 character varying(255) NOT NULL,
    incorrect_answer2 character varying(255) NOT NULL,
    incorrect_answer3 character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.quizzes;
       public         heap    postgres    false            �            1259    16574    quizzes_id_seq    SEQUENCE     w   CREATE SEQUENCE public.quizzes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.quizzes_id_seq;
       public          postgres    false    215            $           0    0    quizzes_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.quizzes_id_seq OWNED BY public.quizzes.id;
          public          postgres    false    214            �            1259    16603    users    TABLE     =  CREATE TABLE public.users (
    id integer NOT NULL,
    fullname character varying NOT NULL,
    email character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    "avatarId" integer,
    diamond integer DEFAULT 0
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    16602    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    219            %           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    218            z           2604    16617 	   avatar id    DEFAULT     f   ALTER TABLE ONLY public.avatar ALTER COLUMN id SET DEFAULT nextval('public.avatar_id_seq'::regclass);
 8   ALTER TABLE public.avatar ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221            u           2604    16597    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            t           2604    16578 
   quizzes id    DEFAULT     h   ALTER TABLE ONLY public.quizzes ALTER COLUMN id SET DEFAULT nextval('public.quizzes_id_seq'::regclass);
 9   ALTER TABLE public.quizzes ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            v           2604    16606    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219                      0    16614    avatar 
   TABLE DATA           J   COPY public.avatar (id, image, price, created_at, updated_at) FROM stdin;
    public          postgres    false    221   �%                 0    16594 
   migrations 
   TABLE DATA           ;   COPY public.migrations (id, "timestamp", name) FROM stdin;
    public          postgres    false    217   Y&                 0    16575    quizzes 
   TABLE DATA           �   COPY public.quizzes (id, difficulty, question, correct_answer, incorrect_answer1, incorrect_answer2, incorrect_answer3, created_at, updated_at) FROM stdin;
    public          postgres    false    215   �&                 0    16603    users 
   TABLE DATA           a   COPY public.users (id, fullname, email, created_at, updated_at, "avatarId", diamond) FROM stdin;
    public          postgres    false    219   C'       &           0    0    avatar_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.avatar_id_seq', 2, true);
          public          postgres    false    220            '           0    0    migrations_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.migrations_id_seq', 1, true);
          public          postgres    false    216            (           0    0    quizzes_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.quizzes_id_seq', 3, true);
          public          postgres    false    214            )           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 3, true);
          public          postgres    false    218            �           2606    16623 %   avatar PK_50e36da9d45349941038eaf149d 
   CONSTRAINT     e   ALTER TABLE ONLY public.avatar
    ADD CONSTRAINT "PK_50e36da9d45349941038eaf149d" PRIMARY KEY (id);
 Q   ALTER TABLE ONLY public.avatar DROP CONSTRAINT "PK_50e36da9d45349941038eaf149d";
       public            postgres    false    221            �           2606    16601 )   migrations PK_8c82d7f526340ab734260ea46be 
   CONSTRAINT     i   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT "PK_8c82d7f526340ab734260ea46be" PRIMARY KEY (id);
 U   ALTER TABLE ONLY public.migrations DROP CONSTRAINT "PK_8c82d7f526340ab734260ea46be";
       public            postgres    false    217            �           2606    16612 $   users PK_a3ffb1c0c8416b9fc6f907b7433 
   CONSTRAINT     d   ALTER TABLE ONLY public.users
    ADD CONSTRAINT "PK_a3ffb1c0c8416b9fc6f907b7433" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.users DROP CONSTRAINT "PK_a3ffb1c0c8416b9fc6f907b7433";
       public            postgres    false    219            ~           2606    16582    quizzes quizzes_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.quizzes
    ADD CONSTRAINT quizzes_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.quizzes DROP CONSTRAINT quizzes_pkey;
       public            postgres    false    215            �           2606    16624 $   users FK_3e1f52ec904aed992472f2be147    FK CONSTRAINT     �   ALTER TABLE ONLY public.users
    ADD CONSTRAINT "FK_3e1f52ec904aed992472f2be147" FOREIGN KEY ("avatarId") REFERENCES public.avatar(id) ON UPDATE SET NULL ON DELETE SET NULL;
 P   ALTER TABLE ONLY public.users DROP CONSTRAINT "FK_3e1f52ec904aed992472f2be147";
       public          postgres    false    3204    221    219               �   x���A�  е��|�Hp�6_m�"0��N_K�iZ�~��0���	��7����1Pz�6^D7dV1^�?�<�H��Cm��
M%��楼��)��1�o(vd���)��� e����܁u�:��1�)���2��Q���=���yk���)Ss�|
����{��W�����7e�{l�^�         +   x�3�44���46470206�����L/J,���C������� �
�         �   x�]���0E��+�`Zڇ���h���rI	�J���E!y�=w�G\D��������~��{:)�)��+�fVk���Z��4�օ6������M��K�/������酐%�x`�!�� .iB���3���;�Ϯ:�;��u'�� �C�         i   x���1
�0D�zs
/�0�4�<�Mb!Âh���V����:tNM�j�{����&����2[n �D:p�Z��`<��粔���ʈK��Q��Gg�9}X*     