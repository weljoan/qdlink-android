.class public Lcom/neusoft/qdrivelink/phone/Utils/ChineseSpelling;
.super Ljava/lang/Object;
.source "ChineseSpelling.java"


# static fields
.field private static chineseSpelling:Lcom/neusoft/qdrivelink/phone/Utils/ChineseSpelling;

.field private static pystr:[Ljava/lang/String;

.field private static pyvalue:[I


# instance fields
.field private buffer:Ljava/lang/StringBuilder;

.field private resource:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x18c

    new-array v1, v0, [I

    .line 5
    fill-array-data v1, :array_0

    sput-object v1, Lcom/neusoft/qdrivelink/phone/Utils/ChineseSpelling;->pyvalue:[I

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "A"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Ai"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "An"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Ang"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Ao"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Ba"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Bai"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Ban"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Bang"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Bao"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Bei"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Ben"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Beng"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Bi"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Bian"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Biao"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Bie"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Bin"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Bing"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Bo"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Bu"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Ca"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Cai"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Can"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Cang"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Cao"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Ce"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Ceng"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "Cha"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "Chai"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "Chan"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "Chang"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "Chao"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "Che"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "Chen"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "Cheng"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "Chi"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "Chong"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "Chou"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "Chu"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "Chuai"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "Chuan"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "Chuang"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "Chui"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "Chun"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "Chuo"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "Ci"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "Cong"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "Cou"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "Cu"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "Cuan"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "Cui"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "Cun"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "Cuo"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "Da"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "Dai"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "Dan"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "Dang"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "Dao"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "De"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "Deng"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "Di"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "Dian"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "Diao"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "Die"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "Ding"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "Diu"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "Dong"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "Dou"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "Du"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "Duan"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "Dui"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "Dun"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "Duo"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "E"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "En"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "Er"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "Fa"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "Fan"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "Fang"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "Fei"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "Fen"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "Feng"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "Fo"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "Fou"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "Fu"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "Ga"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "Gai"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "Gan"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "Gang"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "Gao"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "Ge"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "Gei"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "Gen"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "Geng"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "Gong"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "Gou"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "Gu"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "Gua"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "Guai"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "Guan"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "Guang"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "Gui"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "Gun"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "Guo"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "Ha"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "Hai"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "Han"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "Hang"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "Hao"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "He"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "Hei"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "Hen"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "Heng"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "Hong"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "Hou"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "Hu"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "Hua"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "Huai"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "Huan"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "Huang"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "Hui"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "Hun"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "Huo"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "Ji"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "Jia"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "Jian"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "Jiang"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "Jiao"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "Jie"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "Jin"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "Jing"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "Jiong"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "Jiu"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "Ju"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "Juan"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "Jue"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "Jun"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "Ka"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "Kai"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "Kan"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "Kang"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "Kao"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "Ke"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "Ken"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "Keng"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "Kong"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "Kou"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string v2, "Ku"

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-string v2, "Kua"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const-string v2, "Kuai"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string v2, "Kuan"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-string v2, "Kuang"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string v2, "Kui"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-string v2, "Kun"

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const-string v2, "Kuo"

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const-string v2, "La"

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-string v2, "Lai"

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const-string v2, "Lan"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-string v2, "Lang"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const-string v2, "Lao"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const-string v2, "Le"

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const-string v2, "Lei"

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    const-string v2, "Leng"

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    const-string v2, "Li"

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    const-string v2, "Lia"

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    const-string v2, "Lian"

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    const-string v2, "Liang"

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    const-string v2, "Liao"

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    const-string v2, "Lie"

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    const-string v2, "Lin"

    aput-object v2, v0, v1

    const/16 v1, 0xab

    const-string v2, "Ling"

    aput-object v2, v0, v1

    const/16 v1, 0xac

    const-string v2, "Liu"

    aput-object v2, v0, v1

    const/16 v1, 0xad

    const-string v2, "Long"

    aput-object v2, v0, v1

    const/16 v1, 0xae

    const-string v2, "Lou"

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    const-string v2, "Lu"

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    const-string v2, "Lu:"

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    const-string v2, "Luan"

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    const-string v2, "Lue"

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    const-string v2, "Lun"

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    const-string v2, "Luo"

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    const-string v2, "Ma"

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    const-string v2, "Mai"

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    const-string v2, "Man"

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    const-string v2, "Mang"

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    const-string v2, "Mao"

    aput-object v2, v0, v1

    const/16 v1, 0xba

    const-string v2, "Me"

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    const-string v2, "Mei"

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    const-string v2, "Men"

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    const-string v2, "Meng"

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    const-string v2, "Mi"

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    const-string v2, "Mian"

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    const-string v2, "Miao"

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    const-string v2, "Mie"

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    const-string v2, "Min"

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    const-string v2, "Ming"

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    const-string v2, "Miu"

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    const-string v2, "Mo"

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    const-string v2, "Mou"

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    const-string v2, "Mu"

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    const-string v2, "Na"

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    const-string v2, "Nai"

    aput-object v2, v0, v1

    const/16 v1, 0xca

    const-string v2, "Nan"

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    const-string v2, "Nang"

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    const-string v2, "Nao"

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    const-string v2, "Ne"

    aput-object v2, v0, v1

    const/16 v1, 0xce

    const-string v2, "Nei"

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    const-string v2, "Nen"

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    const-string v2, "Neng"

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    const-string v2, "Ni"

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    const-string v2, "Nian"

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    const-string v2, "Niang"

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    const-string v2, "Niao"

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    const-string v2, "Nie"

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    const-string v2, "Nin"

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    const-string v2, "Ning"

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    const-string v2, "Niu"

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    const-string v2, "Nong"

    aput-object v2, v0, v1

    const/16 v1, 0xda

    const-string v2, "Nu"

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    const-string v2, "Nu:"

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    const-string v2, "Nuan"

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    const-string v2, "Nue"

    aput-object v2, v0, v1

    const/16 v1, 0xde

    const-string v2, "Nuo"

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0xe0

    const-string v2, "Ou"

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    const-string v2, "Pa"

    aput-object v2, v0, v1

    const/16 v1, 0xe2

    const-string v2, "Pai"

    aput-object v2, v0, v1

    const/16 v1, 0xe3

    const-string v2, "Pan"

    aput-object v2, v0, v1

    const/16 v1, 0xe4

    const-string v2, "Pang"

    aput-object v2, v0, v1

    const/16 v1, 0xe5

    const-string v2, "Pao"

    aput-object v2, v0, v1

    const/16 v1, 0xe6

    const-string v2, "Pei"

    aput-object v2, v0, v1

    const/16 v1, 0xe7

    const-string v2, "Pen"

    aput-object v2, v0, v1

    const/16 v1, 0xe8

    const-string v2, "Peng"

    aput-object v2, v0, v1

    const/16 v1, 0xe9

    const-string v2, "Pi"

    aput-object v2, v0, v1

    const/16 v1, 0xea

    const-string v2, "Pian"

    aput-object v2, v0, v1

    const/16 v1, 0xeb

    const-string v2, "Piao"

    aput-object v2, v0, v1

    const/16 v1, 0xec

    const-string v2, "Pie"

    aput-object v2, v0, v1

    const/16 v1, 0xed

    const-string v2, "Pin"

    aput-object v2, v0, v1

    const/16 v1, 0xee

    const-string v2, "Ping"

    aput-object v2, v0, v1

    const/16 v1, 0xef

    const-string v2, "Po"

    aput-object v2, v0, v1

    const/16 v1, 0xf0

    const-string v2, "Pu"

    aput-object v2, v0, v1

    const/16 v1, 0xf1

    const-string v2, "Qi"

    aput-object v2, v0, v1

    const/16 v1, 0xf2

    const-string v2, "Qia"

    aput-object v2, v0, v1

    const/16 v1, 0xf3

    const-string v2, "Qian"

    aput-object v2, v0, v1

    const/16 v1, 0xf4

    const-string v2, "Qiang"

    aput-object v2, v0, v1

    const/16 v1, 0xf5

    const-string v2, "Qiao"

    aput-object v2, v0, v1

    const/16 v1, 0xf6

    const-string v2, "Qie"

    aput-object v2, v0, v1

    const/16 v1, 0xf7

    const-string v2, "Qin"

    aput-object v2, v0, v1

    const/16 v1, 0xf8

    const-string v2, "Qing"

    aput-object v2, v0, v1

    const/16 v1, 0xf9

    const-string v2, "Qiong"

    aput-object v2, v0, v1

    const/16 v1, 0xfa

    const-string v2, "Qiu"

    aput-object v2, v0, v1

    const/16 v1, 0xfb

    const-string v2, "Qu"

    aput-object v2, v0, v1

    const/16 v1, 0xfc

    const-string v2, "Quan"

    aput-object v2, v0, v1

    const/16 v1, 0xfd

    const-string v2, "Que"

    aput-object v2, v0, v1

    const/16 v1, 0xfe

    const-string v2, "Qun"

    aput-object v2, v0, v1

    const/16 v1, 0xff

    const-string v2, "Ran"

    aput-object v2, v0, v1

    const/16 v1, 0x100

    const-string v2, "Rang"

    aput-object v2, v0, v1

    const/16 v1, 0x101

    const-string v2, "Rao"

    aput-object v2, v0, v1

    const/16 v1, 0x102

    const-string v2, "Re"

    aput-object v2, v0, v1

    const/16 v1, 0x103

    const-string v2, "Ren"

    aput-object v2, v0, v1

    const/16 v1, 0x104

    const-string v2, "Reng"

    aput-object v2, v0, v1

    const/16 v1, 0x105

    const-string v2, "Ri"

    aput-object v2, v0, v1

    const/16 v1, 0x106

    const-string v2, "Rong"

    aput-object v2, v0, v1

    const/16 v1, 0x107

    const-string v2, "Rou"

    aput-object v2, v0, v1

    const/16 v1, 0x108

    const-string v2, "Ru"

    aput-object v2, v0, v1

    const/16 v1, 0x109

    const-string v2, "Ruan"

    aput-object v2, v0, v1

    const/16 v1, 0x10a

    const-string v2, "Rui"

    aput-object v2, v0, v1

    const/16 v1, 0x10b

    const-string v2, "Run"

    aput-object v2, v0, v1

    const/16 v1, 0x10c

    const-string v2, "Ruo"

    aput-object v2, v0, v1

    const/16 v1, 0x10d

    const-string v2, "Sa"

    aput-object v2, v0, v1

    const/16 v1, 0x10e

    const-string v2, "Sai"

    aput-object v2, v0, v1

    const/16 v1, 0x10f

    const-string v2, "San"

    aput-object v2, v0, v1

    const/16 v1, 0x110

    const-string v2, "Sang"

    aput-object v2, v0, v1

    const/16 v1, 0x111

    const-string v2, "Sao"

    aput-object v2, v0, v1

    const/16 v1, 0x112

    const-string v2, "Se"

    aput-object v2, v0, v1

    const/16 v1, 0x113

    const-string v2, "Sen"

    aput-object v2, v0, v1

    const/16 v1, 0x114

    const-string v2, "Seng"

    aput-object v2, v0, v1

    const/16 v1, 0x115

    const-string v2, "Sha"

    aput-object v2, v0, v1

    const/16 v1, 0x116

    const-string v2, "Shai"

    aput-object v2, v0, v1

    const/16 v1, 0x117

    const-string v2, "Shan"

    aput-object v2, v0, v1

    const/16 v1, 0x118

    const-string v2, "Shang"

    aput-object v2, v0, v1

    const/16 v1, 0x119

    const-string v2, "Shao"

    aput-object v2, v0, v1

    const/16 v1, 0x11a

    const-string v2, "She"

    aput-object v2, v0, v1

    const/16 v1, 0x11b

    const-string v2, "Shen"

    aput-object v2, v0, v1

    const/16 v1, 0x11c

    const-string v2, "Sheng"

    aput-object v2, v0, v1

    const/16 v1, 0x11d

    const-string v2, "Shi"

    aput-object v2, v0, v1

    const/16 v1, 0x11e

    const-string v2, "Shou"

    aput-object v2, v0, v1

    const/16 v1, 0x11f

    const-string v2, "Shu"

    aput-object v2, v0, v1

    const/16 v1, 0x120

    const-string v2, "Shua"

    aput-object v2, v0, v1

    const/16 v1, 0x121

    const-string v2, "Shuai"

    aput-object v2, v0, v1

    const/16 v1, 0x122

    const-string v2, "Shuan"

    aput-object v2, v0, v1

    const/16 v1, 0x123

    const-string v2, "Shuang"

    aput-object v2, v0, v1

    const/16 v1, 0x124

    const-string v2, "Shui"

    aput-object v2, v0, v1

    const/16 v1, 0x125

    const-string v2, "Shun"

    aput-object v2, v0, v1

    const/16 v1, 0x126

    const-string v2, "Shuo"

    aput-object v2, v0, v1

    const/16 v1, 0x127

    const-string v2, "Si"

    aput-object v2, v0, v1

    const/16 v1, 0x128

    const-string v2, "Song"

    aput-object v2, v0, v1

    const/16 v1, 0x129

    const-string v2, "Sou"

    aput-object v2, v0, v1

    const/16 v1, 0x12a

    const-string v2, "Su"

    aput-object v2, v0, v1

    const/16 v1, 0x12b

    const-string v2, "Suan"

    aput-object v2, v0, v1

    const/16 v1, 0x12c

    const-string v2, "Sui"

    aput-object v2, v0, v1

    const/16 v1, 0x12d

    const-string v2, "Sun"

    aput-object v2, v0, v1

    const/16 v1, 0x12e

    const-string v2, "Suo"

    aput-object v2, v0, v1

    const/16 v1, 0x12f

    const-string v2, "Ta"

    aput-object v2, v0, v1

    const/16 v1, 0x130

    const-string v2, "Tai"

    aput-object v2, v0, v1

    const/16 v1, 0x131

    const-string v2, "Tan"

    aput-object v2, v0, v1

    const/16 v1, 0x132

    const-string v2, "Tang"

    aput-object v2, v0, v1

    const/16 v1, 0x133

    const-string v2, "Tao"

    aput-object v2, v0, v1

    const/16 v1, 0x134

    const-string v2, "Te"

    aput-object v2, v0, v1

    const/16 v1, 0x135

    const-string v2, "Teng"

    aput-object v2, v0, v1

    const/16 v1, 0x136

    const-string v2, "Ti"

    aput-object v2, v0, v1

    const/16 v1, 0x137

    const-string v2, "Tian"

    aput-object v2, v0, v1

    const/16 v1, 0x138

    const-string v2, "Tiao"

    aput-object v2, v0, v1

    const/16 v1, 0x139

    const-string v2, "Tie"

    aput-object v2, v0, v1

    const/16 v1, 0x13a

    const-string v2, "Ting"

    aput-object v2, v0, v1

    const/16 v1, 0x13b

    const-string v2, "Tong"

    aput-object v2, v0, v1

    const/16 v1, 0x13c

    const-string v2, "Tou"

    aput-object v2, v0, v1

    const/16 v1, 0x13d

    const-string v2, "Tu"

    aput-object v2, v0, v1

    const/16 v1, 0x13e

    const-string v2, "Tuan"

    aput-object v2, v0, v1

    const/16 v1, 0x13f

    const-string v2, "Tui"

    aput-object v2, v0, v1

    const/16 v1, 0x140

    const-string v2, "Tun"

    aput-object v2, v0, v1

    const/16 v1, 0x141

    const-string v2, "Tuo"

    aput-object v2, v0, v1

    const/16 v1, 0x142

    const-string v2, "Wa"

    aput-object v2, v0, v1

    const/16 v1, 0x143

    const-string v2, "Wai"

    aput-object v2, v0, v1

    const/16 v1, 0x144

    const-string v2, "Wan"

    aput-object v2, v0, v1

    const/16 v1, 0x145

    const-string v2, "Wang"

    aput-object v2, v0, v1

    const/16 v1, 0x146

    const-string v2, "Wei"

    aput-object v2, v0, v1

    const/16 v1, 0x147

    const-string v2, "Wen"

    aput-object v2, v0, v1

    const/16 v1, 0x148

    const-string v2, "Weng"

    aput-object v2, v0, v1

    const/16 v1, 0x149

    const-string v2, "Wo"

    aput-object v2, v0, v1

    const/16 v1, 0x14a

    const-string v2, "Wu"

    aput-object v2, v0, v1

    const/16 v1, 0x14b

    const-string v2, "Xi"

    aput-object v2, v0, v1

    const/16 v1, 0x14c

    const-string v2, "Xia"

    aput-object v2, v0, v1

    const/16 v1, 0x14d

    const-string v2, "Xian"

    aput-object v2, v0, v1

    const/16 v1, 0x14e

    const-string v2, "Xiang"

    aput-object v2, v0, v1

    const/16 v1, 0x14f

    const-string v2, "Xiao"

    aput-object v2, v0, v1

    const/16 v1, 0x150

    const-string v2, "Xie"

    aput-object v2, v0, v1

    const/16 v1, 0x151

    const-string v2, "Xin"

    aput-object v2, v0, v1

    const/16 v1, 0x152

    const-string v2, "Xing"

    aput-object v2, v0, v1

    const/16 v1, 0x153

    const-string v2, "Xiong"

    aput-object v2, v0, v1

    const/16 v1, 0x154

    const-string v2, "Xiu"

    aput-object v2, v0, v1

    const/16 v1, 0x155

    const-string v2, "Xu"

    aput-object v2, v0, v1

    const/16 v1, 0x156

    const-string v2, "Xuan"

    aput-object v2, v0, v1

    const/16 v1, 0x157

    const-string v2, "Xue"

    aput-object v2, v0, v1

    const/16 v1, 0x158

    const-string v2, "Xun"

    aput-object v2, v0, v1

    const/16 v1, 0x159

    const-string v2, "Ya"

    aput-object v2, v0, v1

    const/16 v1, 0x15a

    const-string v2, "Yan"

    aput-object v2, v0, v1

    const/16 v1, 0x15b

    const-string v2, "Yang"

    aput-object v2, v0, v1

    const/16 v1, 0x15c

    const-string v2, "Yao"

    aput-object v2, v0, v1

    const/16 v1, 0x15d

    const-string v2, "Ye"

    aput-object v2, v0, v1

    const/16 v1, 0x15e

    const-string v2, "Yi"

    aput-object v2, v0, v1

    const/16 v1, 0x15f

    const-string v2, "Yin"

    aput-object v2, v0, v1

    const/16 v1, 0x160

    const-string v2, "Ying"

    aput-object v2, v0, v1

    const/16 v1, 0x161

    const-string v2, "Yo"

    aput-object v2, v0, v1

    const/16 v1, 0x162

    const-string v2, "Yong"

    aput-object v2, v0, v1

    const/16 v1, 0x163

    const-string v2, "You"

    aput-object v2, v0, v1

    const/16 v1, 0x164

    const-string v2, "Yu"

    aput-object v2, v0, v1

    const/16 v1, 0x165

    const-string v2, "Yuan"

    aput-object v2, v0, v1

    const/16 v1, 0x166

    const-string v2, "Yue"

    aput-object v2, v0, v1

    const/16 v1, 0x167

    const-string v2, "Yun"

    aput-object v2, v0, v1

    const/16 v1, 0x168

    const-string v2, "Za"

    aput-object v2, v0, v1

    const/16 v1, 0x169

    const-string v2, "Zai"

    aput-object v2, v0, v1

    const/16 v1, 0x16a

    const-string v2, "Zan"

    aput-object v2, v0, v1

    const/16 v1, 0x16b

    const-string v2, "Zang"

    aput-object v2, v0, v1

    const/16 v1, 0x16c

    const-string v2, "Zao"

    aput-object v2, v0, v1

    const/16 v1, 0x16d

    const-string v2, "Ze"

    aput-object v2, v0, v1

    const/16 v1, 0x16e

    const-string v2, "Zei"

    aput-object v2, v0, v1

    const/16 v1, 0x16f

    const-string v2, "Zen"

    aput-object v2, v0, v1

    const/16 v1, 0x170

    const-string v2, "Zeng"

    aput-object v2, v0, v1

    const/16 v1, 0x171

    const-string v2, "Zha"

    aput-object v2, v0, v1

    const/16 v1, 0x172

    const-string v2, "Zhai"

    aput-object v2, v0, v1

    const/16 v1, 0x173

    const-string v2, "Zhan"

    aput-object v2, v0, v1

    const/16 v1, 0x174

    const-string v2, "Zhang"

    aput-object v2, v0, v1

    const/16 v1, 0x175

    const-string v2, "Zhao"

    aput-object v2, v0, v1

    const/16 v1, 0x176

    const-string v2, "Zhe"

    aput-object v2, v0, v1

    const/16 v1, 0x177

    const-string v2, "Zhen"

    aput-object v2, v0, v1

    const/16 v1, 0x178

    const-string v2, "Zheng"

    aput-object v2, v0, v1

    const/16 v1, 0x179

    const-string v2, "Zhi"

    aput-object v2, v0, v1

    const/16 v1, 0x17a

    const-string v2, "Zhong"

    aput-object v2, v0, v1

    const/16 v1, 0x17b

    const-string v2, "Zhou"

    aput-object v2, v0, v1

    const/16 v1, 0x17c

    const-string v2, "Zhu"

    aput-object v2, v0, v1

    const/16 v1, 0x17d

    const-string v2, "Zhua"

    aput-object v2, v0, v1

    const/16 v1, 0x17e

    const-string v2, "Zhuai"

    aput-object v2, v0, v1

    const/16 v1, 0x17f

    const-string v2, "Zhuan"

    aput-object v2, v0, v1

    const/16 v1, 0x180

    const-string v2, "Zhuang"

    aput-object v2, v0, v1

    const/16 v1, 0x181

    const-string v2, "Zhui"

    aput-object v2, v0, v1

    const/16 v1, 0x182

    const-string v2, "Zhun"

    aput-object v2, v0, v1

    const/16 v1, 0x183

    const-string v2, "Zhuo"

    aput-object v2, v0, v1

    const/16 v1, 0x184

    const-string v2, "Zi"

    aput-object v2, v0, v1

    const/16 v1, 0x185

    const-string v2, "Zong"

    aput-object v2, v0, v1

    const/16 v1, 0x186

    const-string v2, "Zou"

    aput-object v2, v0, v1

    const/16 v1, 0x187

    const-string v2, "Zu"

    aput-object v2, v0, v1

    const/16 v1, 0x188

    const-string v2, "Zuan"

    aput-object v2, v0, v1

    const/16 v1, 0x189

    const-string v2, "Zui"

    aput-object v2, v0, v1

    const/16 v1, 0x18a

    const-string v2, "Zun"

    aput-object v2, v0, v1

    const/16 v1, 0x18b

    const-string v2, "Zuo"

    aput-object v2, v0, v1

    .line 56
    sput-object v0, Lcom/neusoft/qdrivelink/phone/Utils/ChineseSpelling;->pystr:[Ljava/lang/String;

    .line 106
    new-instance v0, Lcom/neusoft/qdrivelink/phone/Utils/ChineseSpelling;

    invoke-direct {v0}, Lcom/neusoft/qdrivelink/phone/Utils/ChineseSpelling;-><init>()V

    sput-object v0, Lcom/neusoft/qdrivelink/phone/Utils/ChineseSpelling;->chineseSpelling:Lcom/neusoft/qdrivelink/phone/Utils/ChineseSpelling;

    return-void

    nop

    :array_0
    .array-data 4
        -0x4f5f
        -0x4f5d
        -0x4f50
        -0x4f47
        -0x4f44
        -0x4f3b
        -0x4f29
        -0x4f21
        -0x4f12
        -0x4f06
        -0x4e53
        -0x4e44
        -0x4e40
        -0x4e3a
        -0x4e22
        -0x4e16
        -0x4e12
        -0x4e0e
        -0x4e08
        -0x4d5d
        -0x4d48
        -0x4d3f
        -0x4d3e
        -0x4d33
        -0x4d2c
        -0x4d27
        -0x4d22
        -0x4d1d
        -0x4d1b
        -0x4d10
        -0x4d0d
        -0x4d03
        -0x4c54
        -0x4c4b
        -0x4c45
        -0x4c3b
        -0x4c2c
        -0x4c1c
        -0x4c17
        -0x4c0b
        -0x4b59
        -0x4b58
        -0x4b51
        -0x4b4b
        -0x4b46
        -0x4b3f
        -0x4b3d
        -0x4b31
        -0x4b2b
        -0x4b2a
        -0x4b26
        -0x4b23
        -0x4b1b
        -0x4b18
        -0x4b12
        -0x4b0c
        -0x4a5e
        -0x4a4f
        -0x4a4a
        -0x4a3e
        -0x4a3b
        -0x4a34
        -0x4a21
        -0x4a11
        -0x4a08
        -0x495f
        -0x4956
        -0x4955
        -0x494b
        -0x4944
        -0x4935
        -0x492f
        -0x492b
        -0x4922
        -0x4916
        -0x4909
        -0x4908
        -0x485e
        -0x4856
        -0x4845
        -0x483a
        -0x482e
        -0x481f
        -0x4810
        -0x480f
        -0x480e
        -0x473f
        -0x473d
        -0x4737
        -0x472c
        -0x4723
        -0x4719
        -0x4708
        -0x4707
        -0x4705
        -0x465c
        -0x464d
        -0x4644
        -0x4632
        -0x462c
        -0x4629
        -0x461e
        -0x461b
        -0x460b
        -0x4608
        -0x4602
        -0x455f
        -0x4558
        -0x4545
        -0x4542
        -0x4539
        -0x4527
        -0x4525
        -0x4521
        -0x451c
        -0x4513
        -0x450c
        -0x4458
        -0x444f
        -0x444a
        -0x443c
        -0x442e
        -0x4419
        -0x4413
        -0x4409
        -0x4332
        -0x4321
        -0x4257
        -0x424a
        -0x422e
        -0x4213
        -0x415d
        -0x4144
        -0x4142
        -0x4131
        -0x4118
        -0x4111
        -0x4107
        -0x405a
        -0x4056
        -0x4051
        -0x404b
        -0x4044
        -0x4040
        -0x4031
        -0x402d
        -0x402b
        -0x4027
        -0x4023
        -0x401c
        -0x4017
        -0x4013
        -0x4011
        -0x4009
        -0x3f5c
        -0x3f58
        -0x3f54
        -0x3f4d
        -0x3f4a
        -0x3f3b
        -0x3f34
        -0x3f2b
        -0x3f29
        -0x3f1e
        -0x3f1b
        -0x3e57
        -0x3e56
        -0x3e48
        -0x3e3d
        -0x3e30
        -0x3e2b
        -0x3e1f
        -0x3e11
        -0x3e06
        -0x3d5b
        -0x3d55
        -0x3d41
        -0x3d33
        -0x3d2d
        -0x3d2b
        -0x3d24
        -0x3d18
        -0x3d0f
        -0x3d09
        -0x3c5e
        -0x3c58
        -0x3c4c
        -0x3c4b
        -0x3c3b
        -0x3c38
        -0x3c30
        -0x3c22
        -0x3c19
        -0x3c11
        -0x3c0f
        -0x3c09
        -0x3c03
        -0x3c02
        -0x3b4f
        -0x3b4c
        -0x3b3d
        -0x3b36
        -0x3b31
        -0x3b2e
        -0x3b2d
        -0x3b28
        -0x3b27
        -0x3b25
        -0x3b24
        -0x3b23
        -0x3b18
        -0x3b11
        -0x3b0f
        -0x3b0d
        -0x3b06
        -0x3b05
        -0x3a5d
        -0x3a59
        -0x3a55
        -0x3a52
        -0x3a51
        -0x3a50
        -0x3a4e
        -0x3a4a
        -0x3a49
        -0x3a42
        -0x3a3c
        -0x3a36
        -0x3a2e
        -0x3a29
        -0x3a22
        -0x3a19
        -0x3a17
        -0x3a09
        -0x3956
        -0x3952
        -0x394e
        -0x394c
        -0x3947
        -0x393e
        -0x3935
        -0x3926
        -0x3902
        -0x385d
        -0x3847
        -0x383f
        -0x3830
        -0x382b
        -0x3820
        -0x3813
        -0x3811
        -0x3809
        -0x375a
        -0x374f
        -0x3747
        -0x3745
        -0x3741
        -0x373c
        -0x3739
        -0x3737
        -0x372d
        -0x372b
        -0x372a
        -0x3720
        -0x371d
        -0x3713
        -0x3711
        -0x370e
        -0x370c
        -0x370a
        -0x3707
        -0x3703
        -0x365d
        -0x365a
        -0x3656
        -0x3653
        -0x3652
        -0x3651
        -0x3648
        -0x3646
        -0x3636
        -0x362e
        -0x3623
        -0x3617
        -0x3607
        -0x355a
        -0x352b
        -0x3521
        -0x345e
        -0x345c
        -0x3458
        -0x3456
        -0x3453
        -0x344f
        -0x344b
        -0x3447
        -0x3437
        -0x342f
        -0x342c
        -0x341f
        -0x341c
        -0x3411
        -0x340e
        -0x3406
        -0x335b
        -0x3352
        -0x3340
        -0x3333
        -0x3328
        -0x3327
        -0x3323
        -0x3314
        -0x330c
        -0x3307
        -0x3304
        -0x3258
        -0x324b
        -0x3247
        -0x323c
        -0x323a
        -0x3234
        -0x3231
        -0x3226
        -0x321f
        -0x321d
        -0x320c
        -0x3202
        -0x313f
        -0x3135
        -0x3132
        -0x3129
        -0x310c
        -0x3047
        -0x303a
        -0x3020
        -0x300c
        -0x2f58
        -0x2f43
        -0x2f39
        -0x2f2a
        -0x2f23
        -0x2f1a
        -0x2f07
        -0x2e5b
        -0x2e55
        -0x2e47
        -0x2e37
        -0x2e16
        -0x2e05
        -0x2d54
        -0x2d45
        -0x2d10
        -0x2c5e
        -0x2c4c
        -0x2c4b
        -0x2c3c
        -0x2c27
        -0x2b59
        -0x2b45
        -0x2b3b
        -0x2b2f
        -0x2b2c
        -0x2b25
        -0x2b21
        -0x2b1e
        -0x2b10
        -0x2b0c
        -0x2b0b
        -0x2b0a
        -0x2b06
        -0x2a56
        -0x2a50
        -0x2a3f
        -0x2a30
        -0x2a26
        -0x2a1c
        -0x2a0c
        -0x295b
        -0x2930
        -0x2925
        -0x2917
        -0x285b
        -0x2859
        -0x2858
        -0x2852
        -0x284b
        -0x2845
        -0x2843
        -0x2838
        -0x2829
        -0x2822
        -0x281e
        -0x2816
        -0x2814
        -0x2810
        -0x280e
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getChsAscii(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "gb2312"

    .line 124
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_1

    .line 126
    array-length v1, p1

    const/4 v2, 0x2

    if-gt v1, v2, :cond_1

    array-length v1, p1

    if-lez v1, :cond_1

    .line 134
    array-length v1, p1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 136
    aget-byte v1, p1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 138
    :goto_0
    :try_start_1
    array-length v4, p1

    if-ne v4, v2, :cond_2

    .line 140
    aget-byte v0, p1, v0

    add-int/lit16 v0, v0, 0x100

    .line 141
    aget-byte p1, p1, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit16 p1, p1, 0x100

    mul-int/lit16 v0, v0, 0x100

    add-int/2addr v0, p1

    const/high16 p1, 0x10000

    sub-int v1, v0, p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    .line 130
    :cond_1
    :try_start_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v1, "illegal resource string"

    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p1

    const/4 v1, 0x0

    .line 145
    :goto_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERROR:ChineseSpelling.class-getChsAscii(String chs)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    :goto_2
    return v1
.end method

.method public static getInstance()Lcom/neusoft/qdrivelink/phone/Utils/ChineseSpelling;
    .locals 1

    .line 109
    sget-object v0, Lcom/neusoft/qdrivelink/phone/Utils/ChineseSpelling;->chineseSpelling:Lcom/neusoft/qdrivelink/phone/Utils/ChineseSpelling;

    return-object v0
.end method


# virtual methods
.method public convert(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 155
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivelink/phone/Utils/ChineseSpelling;->getChsAscii(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    const/16 v0, 0xa0

    if-ge p1, v0, :cond_0

    int-to-char p1, p1

    .line 159
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 161
    :cond_0
    sget-object v0, Lcom/neusoft/qdrivelink/phone/Utils/ChineseSpelling;->pyvalue:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 162
    sget-object v1, Lcom/neusoft/qdrivelink/phone/Utils/ChineseSpelling;->pyvalue:[I

    aget v1, v1, v0

    if-gt v1, p1, :cond_1

    .line 163
    sget-object p1, Lcom/neusoft/qdrivelink/phone/Utils/ChineseSpelling;->pystr:[Ljava/lang/String;

    aget-object p1, p1, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public getResource()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/Utils/ChineseSpelling;->resource:Ljava/lang/String;

    return-object v0
.end method

.method public getSelling(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 215
    invoke-virtual {p0, p1, v0}, Lcom/neusoft/qdrivelink/phone/Utils/ChineseSpelling;->getSelling(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSelling(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/neusoft/qdrivelink/phone/Utils/ChineseSpelling;->buffer:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 174
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_6

    add-int/lit8 v2, v1, 0x1

    .line 175
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 176
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_4

    if-nez p2, :cond_3

    .line 182
    invoke-virtual {p0, v1}, Lcom/neusoft/qdrivelink/phone/Utils/ChineseSpelling;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v4, "Zuo"

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    move-object v1, v3

    goto :goto_2

    .line 185
    :cond_1
    :goto_1
    invoke-static {}, Lcom/neusoft/qdrivelink/phone/Utils/PinyinUtil;->getInstance()Lcom/neusoft/qdrivelink/phone/Utils/PinyinUtil;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/neusoft/qdrivelink/phone/Utils/PinyinUtil;->getPinyinCapital(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "line.separator"

    .line 187
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 188
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 190
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-lez v3, :cond_5

    .line 191
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 197
    :cond_3
    invoke-static {}, Lcom/neusoft/qdrivelink/phone/Utils/PinyinUtil;->getInstance()Lcom/neusoft/qdrivelink/phone/Utils/PinyinUtil;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/neusoft/qdrivelink/phone/Utils/PinyinUtil;->getPinyinCapital(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    const-string v3, "[\\ud800\\udc00-\\udbff\\udfff\\ud800-\\udfff]"

    .line 204
    invoke-virtual {v1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v1, "\u001f"

    .line 209
    :cond_5
    :goto_2
    iget-object v3, p0, Lcom/neusoft/qdrivelink/phone/Utils/ChineseSpelling;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    goto :goto_0

    .line 211
    :cond_6
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/Utils/ChineseSpelling;->buffer:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSpelling()Ljava/lang/String;
    .locals 1

    .line 219
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/Utils/ChineseSpelling;->getResource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/neusoft/qdrivelink/phone/Utils/ChineseSpelling;->getSelling(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setResource(Ljava/lang/String;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/Utils/ChineseSpelling;->resource:Ljava/lang/String;

    return-void
.end method
