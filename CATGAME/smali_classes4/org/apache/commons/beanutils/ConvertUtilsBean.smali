.class public Lorg/apache/commons/beanutils/ConvertUtilsBean;
.super Ljava/lang/Object;
.source "ConvertUtilsBean.java"


# static fields
.field private static final SPACE:Ljava/lang/Character;

.field private static final ZERO:Ljava/lang/Integer;

.field private static defaultShort:Ljava/lang/Short;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final converters:Lorg/apache/commons/beanutils/WeakFastHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/beanutils/WeakFastHashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/apache/commons/beanutils/Converter;",
            ">;"
        }
    .end annotation
.end field

.field private defaultBoolean:Ljava/lang/Boolean;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private defaultByte:Ljava/lang/Byte;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private defaultCharacter:Ljava/lang/Character;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private defaultDouble:Ljava/lang/Double;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private defaultFloat:Ljava/lang/Float;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private defaultInteger:Ljava/lang/Integer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private defaultLong:Ljava/lang/Long;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final log:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 129
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->ZERO:Ljava/lang/Integer;

    .line 130
    new-instance v0, Ljava/lang/Character;

    const/16 v2, 0x20

    invoke-direct {v0, v2}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->SPACE:Ljava/lang/Character;

    .line 406
    new-instance v0, Ljava/lang/Short;

    invoke-direct {v0, v1}, Ljava/lang/Short;-><init>(S)V

    sput-object v0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->defaultShort:Ljava/lang/Short;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    new-instance v0, Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-direct {v0}, Lorg/apache/commons/beanutils/WeakFastHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->converters:Lorg/apache/commons/beanutils/WeakFastHashMap;

    .line 154
    const-class v0, Lorg/apache/commons/beanutils/ConvertUtils;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->log:Lorg/apache/commons/logging/Log;

    .line 172
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->defaultBoolean:Ljava/lang/Boolean;

    .line 205
    new-instance v0, Ljava/lang/Byte;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Byte;-><init>(B)V

    iput-object v0, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->defaultByte:Ljava/lang/Byte;

    .line 238
    new-instance v0, Ljava/lang/Character;

    const/16 v2, 0x20

    invoke-direct {v0, v2}, Ljava/lang/Character;-><init>(C)V

    iput-object v0, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->defaultCharacter:Ljava/lang/Character;

    .line 273
    new-instance v0, Ljava/lang/Double;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    iput-object v0, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->defaultDouble:Ljava/lang/Double;

    .line 306
    new-instance v0, Ljava/lang/Float;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/lang/Float;-><init>(F)V

    iput-object v0, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->defaultFloat:Ljava/lang/Float;

    .line 339
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->defaultInteger:Ljava/lang/Integer;

    .line 372
    new-instance v0, Ljava/lang/Long;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    iput-object v0, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->defaultLong:Ljava/lang/Long;

    .line 160
    iget-object v0, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->converters:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-virtual {v0, v1}, Lorg/apache/commons/beanutils/WeakFastHashMap;->setFast(Z)V

    .line 161
    invoke-virtual {p0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->deregister()V

    .line 162
    iget-object v0, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->converters:Lorg/apache/commons/beanutils/WeakFastHashMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/commons/beanutils/WeakFastHashMap;->setFast(Z)V

    .line 163
    return-void
.end method

.method protected static getInstance()Lorg/apache/commons/beanutils/ConvertUtilsBean;
    .locals 1

    .line 138
    invoke-static {}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getInstance()Lorg/apache/commons/beanutils/BeanUtilsBean;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/beanutils/BeanUtilsBean;->getConvertUtils()Lorg/apache/commons/beanutils/ConvertUtilsBean;

    move-result-object v0

    return-object v0
.end method

.method private register(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;)V
    .locals 1
    .param p2, "converter"    # Lorg/apache/commons/beanutils/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/apache/commons/beanutils/Converter;",
            ")V"
        }
    .end annotation

    .line 808
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lorg/apache/commons/beanutils/converters/ConverterFacade;

    invoke-direct {v0, p2}, Lorg/apache/commons/beanutils/converters/ConverterFacade;-><init>(Lorg/apache/commons/beanutils/Converter;)V

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Lorg/apache/commons/beanutils/Converter;Ljava/lang/Class;)V

    .line 809
    return-void
.end method

.method private registerArrayConverter(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;ZI)V
    .locals 3
    .param p2, "componentConverter"    # Lorg/apache/commons/beanutils/Converter;
    .param p3, "throwException"    # Z
    .param p4, "defaultArraySize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/apache/commons/beanutils/Converter;",
            "ZI)V"
        }
    .end annotation

    .line 796
    .local p1, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 797
    .local v0, "arrayType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 798
    .local v1, "arrayConverter":Lorg/apache/commons/beanutils/Converter;
    if-eqz p3, :cond_0

    .line 799
    new-instance v2, Lorg/apache/commons/beanutils/converters/ArrayConverter;

    invoke-direct {v2, v0, p2}, Lorg/apache/commons/beanutils/converters/ArrayConverter;-><init>(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;)V

    move-object v1, v2

    goto :goto_0

    .line 801
    :cond_0
    new-instance v2, Lorg/apache/commons/beanutils/converters/ArrayConverter;

    invoke-direct {v2, v0, p2, p4}, Lorg/apache/commons/beanutils/converters/ArrayConverter;-><init>(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;I)V

    move-object v1, v2

    .line 803
    :goto_0
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;)V

    .line 804
    return-void
.end method

.method private registerArrays(ZI)V
    .locals 2
    .param p1, "throwException"    # Z
    .param p2, "defaultArraySize"    # I

    .line 750
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v1, Lorg/apache/commons/beanutils/converters/BooleanConverter;

    invoke-direct {v1}, Lorg/apache/commons/beanutils/converters/BooleanConverter;-><init>()V

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->registerArrayConverter(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;ZI)V

    .line 751
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    new-instance v1, Lorg/apache/commons/beanutils/converters/ByteConverter;

    invoke-direct {v1}, Lorg/apache/commons/beanutils/converters/ByteConverter;-><init>()V

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->registerArrayConverter(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;ZI)V

    .line 752
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    new-instance v1, Lorg/apache/commons/beanutils/converters/CharacterConverter;

    invoke-direct {v1}, Lorg/apache/commons/beanutils/converters/CharacterConverter;-><init>()V

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->registerArrayConverter(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;ZI)V

    .line 753
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    new-instance v1, Lorg/apache/commons/beanutils/converters/DoubleConverter;

    invoke-direct {v1}, Lorg/apache/commons/beanutils/converters/DoubleConverter;-><init>()V

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->registerArrayConverter(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;ZI)V

    .line 754
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    new-instance v1, Lorg/apache/commons/beanutils/converters/FloatConverter;

    invoke-direct {v1}, Lorg/apache/commons/beanutils/converters/FloatConverter;-><init>()V

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->registerArrayConverter(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;ZI)V

    .line 755
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v1, Lorg/apache/commons/beanutils/converters/IntegerConverter;

    invoke-direct {v1}, Lorg/apache/commons/beanutils/converters/IntegerConverter;-><init>()V

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->registerArrayConverter(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;ZI)V

    .line 756
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    new-instance v1, Lorg/apache/commons/beanutils/converters/LongConverter;

    invoke-direct {v1}, Lorg/apache/commons/beanutils/converters/LongConverter;-><init>()V

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->registerArrayConverter(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;ZI)V

    .line 757
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    new-instance v1, Lorg/apache/commons/beanutils/converters/ShortConverter;

    invoke-direct {v1}, Lorg/apache/commons/beanutils/converters/ShortConverter;-><init>()V

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->registerArrayConverter(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;ZI)V

    .line 760
    const-class v0, Ljava/math/BigDecimal;

    new-instance v1, Lorg/apache/commons/beanutils/converters/BigDecimalConverter;

    invoke-direct {v1}, Lorg/apache/commons/beanutils/converters/BigDecimalConverter;-><init>()V

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->registerArrayConverter(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;ZI)V

    .line 761
    const-class v0, Ljava/math/BigInteger;

    new-instance v1, Lorg/apache/commons/beanutils/converters/BigIntegerConverter;

    invoke-direct {v1}, Lorg/apache/commons/beanutils/converters/BigIntegerConverter;-><init>()V

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->registerArrayConverter(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;ZI)V

    .line 762
    const-class v0, Ljava/lang/Boolean;

    new-instance v1, Lorg/apache/commons/beanutils/converters/BooleanConverter;

    invoke-direct {v1}, Lorg/apache/commons/beanutils/converters/BooleanConverter;-><init>()V

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->registerArrayConverter(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;ZI)V

    .line 763
    const-class v0, Ljava/lang/Byte;

    new-instance v1, Lorg/apache/commons/beanutils/converters/ByteConverter;

    invoke-direct {v1}, Lorg/apache/commons/beanutils/converters/ByteConverter;-><init>()V

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->registerArrayConverter(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;ZI)V

    .line 764
    const-class v0, Ljava/lang/Character;

    new-instance v1, Lorg/apache/commons/beanutils/converters/CharacterConverter;

    invoke-direct {v1}, Lorg/apache/commons/beanutils/converters/CharacterConverter;-><init>()V

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->registerArrayConverter(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;ZI)V

    .line 765
    const-class v0, Ljava/lang/Double;

    new-instance v1, Lorg/apache/commons/beanutils/converters/DoubleConverter;

    invoke-direct {v1}, Lorg/apache/commons/beanutils/converters/DoubleConverter;-><init>()V

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->registerArrayConverter(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;ZI)V

    .line 766
    const-class v0, Ljava/lang/Float;

    new-instance v1, Lorg/apache/commons/beanutils/converters/FloatConverter;

    invoke-direct {v1}, Lorg/apache/commons/beanutils/converters/FloatConverter;-><init>()V

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->registerArrayConverter(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;ZI)V

    .line 767
    const-class v0, Ljava/lang/Integer;

    new-instance v1, Lorg/apache/commons/beanutils/converters/IntegerConverter;

    invoke-direct {v1}, Lorg/apache/commons/beanutils/converters/IntegerConverter;-><init>()V

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->registerArrayConverter(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;ZI)V

    .line 768
    const-class v0, Ljava/lang/Long;

    new-instance v1, Lorg/apache/commons/beanutils/converters/LongConverter;

    invoke-direct {v1}, Lorg/apache/commons/beanutils/converters/LongConverter;-><init>()V

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->registerArrayConverter(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;ZI)V

    .line 769
    const-class v0, Ljava/lang/Short;

    new-instance v1, Lorg/apache/commons/beanutils/converters/ShortConverter;

    invoke-direct {v1}, Lorg/apache/commons/beanutils/converters/ShortConverter;-><init>()V

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->registerArrayConverter(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;ZI)V

    .line 770
    const-class v0, Ljava/lang/String;

    new-instance v1, Lorg/apache/commons/beanutils/converters/StringConverter;

    invoke-direct {v1}, Lorg/apache/commons/beanutils/converters/StringConverter;-><init>()V

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->registerArrayConverter(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;ZI)V

    .line 773
    const-class v0, Ljava/lang/Class;

    new-instance v1, Lorg/apache/commons/beanutils/converters/ClassConverter;

    invoke-direct {v1}, Lorg/apache/commons/beanutils/converters/ClassConverter;-><init>()V

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->registerArrayConverter(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;ZI)V

    .line 774
    const-class v0, Ljava/util/Date;

    new-instance v1, Lorg/apache/commons/beanutils/converters/DateConverter;

    invoke-direct {v1}, Lorg/apache/commons/beanutils/converters/DateConverter;-><init>()V

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->registerArrayConverter(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;ZI)V

    .line 775
    const-class v0, Ljava/util/Calendar;

    new-instance v1, Lorg/apache/commons/beanutils/converters/DateConverter;

    invoke-direct {v1}, Lorg/apache/commons/beanutils/converters/DateConverter;-><init>()V

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->registerArrayConverter(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;ZI)V

    .line 776
    const-class v0, Ljava/io/File;

    new-instance v1, Lorg/apache/commons/beanutils/converters/FileConverter;

    invoke-direct {v1}, Lorg/apache/commons/beanutils/converters/FileConverter;-><init>()V

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->registerArrayConverter(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;ZI)V

    .line 777
    const-class v0, Ljava/sql/Date;

    new-instance v1, Lorg/apache/commons/beanutils/converters/SqlDateConverter;

    invoke-direct {v1}, Lorg/apache/commons/beanutils/converters/SqlDateConverter;-><init>()V

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->registerArrayConverter(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;ZI)V

    .line 778
    const-class v0, Ljava/sql/Time;

    new-instance v1, Lorg/apache/commons/beanutils/converters/SqlTimeConverter;

    invoke-direct {v1}, Lorg/apache/commons/beanutils/converters/SqlTimeConverter;-><init>()V

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->registerArrayConverter(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;ZI)V

    .line 779
    const-class v0, Ljava/sql/Timestamp;

    new-instance v1, Lorg/apache/commons/beanutils/converters/SqlTimestampConverter;

    invoke-direct {v1}, Lorg/apache/commons/beanutils/converters/SqlTimestampConverter;-><init>()V

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->registerArrayConverter(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;ZI)V

    .line 780
    const-class v0, Ljava/net/URL;

    new-instance v1, Lorg/apache/commons/beanutils/converters/URLConverter;

    invoke-direct {v1}, Lorg/apache/commons/beanutils/converters/URLConverter;-><init>()V

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->registerArrayConverter(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;ZI)V

    .line 782
    return-void
.end method

.method private registerOther(Z)V
    .locals 3
    .param p1, "throwException"    # Z

    .line 726
    const-class v0, Ljava/lang/Class;

    const/4 v1, 0x0

    new-instance v2, Lorg/apache/commons/beanutils/converters/ClassConverter;

    if-eqz p1, :cond_0

    invoke-direct {v2}, Lorg/apache/commons/beanutils/converters/ClassConverter;-><init>()V

    goto :goto_0

    :cond_0
    invoke-direct {v2, v1}, Lorg/apache/commons/beanutils/converters/ClassConverter;-><init>(Ljava/lang/Object;)V

    :goto_0
    invoke-direct {p0, v0, v2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;)V

    .line 727
    const-class v0, Ljava/util/Date;

    new-instance v2, Lorg/apache/commons/beanutils/converters/DateConverter;

    if-eqz p1, :cond_1

    invoke-direct {v2}, Lorg/apache/commons/beanutils/converters/DateConverter;-><init>()V

    goto :goto_1

    :cond_1
    invoke-direct {v2, v1}, Lorg/apache/commons/beanutils/converters/DateConverter;-><init>(Ljava/lang/Object;)V

    :goto_1
    invoke-direct {p0, v0, v2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;)V

    .line 728
    const-class v0, Ljava/util/Calendar;

    new-instance v2, Lorg/apache/commons/beanutils/converters/CalendarConverter;

    if-eqz p1, :cond_2

    invoke-direct {v2}, Lorg/apache/commons/beanutils/converters/CalendarConverter;-><init>()V

    goto :goto_2

    :cond_2
    invoke-direct {v2, v1}, Lorg/apache/commons/beanutils/converters/CalendarConverter;-><init>(Ljava/lang/Object;)V

    :goto_2
    invoke-direct {p0, v0, v2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;)V

    .line 729
    const-class v0, Ljava/io/File;

    new-instance v2, Lorg/apache/commons/beanutils/converters/FileConverter;

    if-eqz p1, :cond_3

    invoke-direct {v2}, Lorg/apache/commons/beanutils/converters/FileConverter;-><init>()V

    goto :goto_3

    :cond_3
    invoke-direct {v2, v1}, Lorg/apache/commons/beanutils/converters/FileConverter;-><init>(Ljava/lang/Object;)V

    :goto_3
    invoke-direct {p0, v0, v2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;)V

    .line 730
    const-class v0, Ljava/sql/Date;

    new-instance v2, Lorg/apache/commons/beanutils/converters/SqlDateConverter;

    if-eqz p1, :cond_4

    invoke-direct {v2}, Lorg/apache/commons/beanutils/converters/SqlDateConverter;-><init>()V

    goto :goto_4

    :cond_4
    invoke-direct {v2, v1}, Lorg/apache/commons/beanutils/converters/SqlDateConverter;-><init>(Ljava/lang/Object;)V

    :goto_4
    invoke-direct {p0, v0, v2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;)V

    .line 731
    const-class v0, Ljava/sql/Time;

    new-instance v2, Lorg/apache/commons/beanutils/converters/SqlTimeConverter;

    if-eqz p1, :cond_5

    invoke-direct {v2}, Lorg/apache/commons/beanutils/converters/SqlTimeConverter;-><init>()V

    goto :goto_5

    :cond_5
    invoke-direct {v2, v1}, Lorg/apache/commons/beanutils/converters/SqlTimeConverter;-><init>(Ljava/lang/Object;)V

    :goto_5
    invoke-direct {p0, v0, v2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;)V

    .line 732
    const-class v0, Ljava/sql/Timestamp;

    new-instance v2, Lorg/apache/commons/beanutils/converters/SqlTimestampConverter;

    if-eqz p1, :cond_6

    invoke-direct {v2}, Lorg/apache/commons/beanutils/converters/SqlTimestampConverter;-><init>()V

    goto :goto_6

    :cond_6
    invoke-direct {v2, v1}, Lorg/apache/commons/beanutils/converters/SqlTimestampConverter;-><init>(Ljava/lang/Object;)V

    :goto_6
    invoke-direct {p0, v0, v2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;)V

    .line 733
    const-class v0, Ljava/net/URL;

    if-eqz p1, :cond_7

    new-instance v1, Lorg/apache/commons/beanutils/converters/URLConverter;

    invoke-direct {v1}, Lorg/apache/commons/beanutils/converters/URLConverter;-><init>()V

    goto :goto_7

    :cond_7
    new-instance v2, Lorg/apache/commons/beanutils/converters/URLConverter;

    invoke-direct {v2, v1}, Lorg/apache/commons/beanutils/converters/URLConverter;-><init>(Ljava/lang/Object;)V

    move-object v1, v2

    :goto_7
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;)V

    .line 734
    return-void
.end method

.method private registerPrimitives(Z)V
    .locals 3
    .param p1, "throwException"    # Z

    .line 649
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v1, Lorg/apache/commons/beanutils/converters/BooleanConverter;

    if-eqz p1, :cond_0

    invoke-direct {v1}, Lorg/apache/commons/beanutils/converters/BooleanConverter;-><init>()V

    goto :goto_0

    :cond_0
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v1, v2}, Lorg/apache/commons/beanutils/converters/BooleanConverter;-><init>(Ljava/lang/Object;)V

    :goto_0
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;)V

    .line 650
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    new-instance v1, Lorg/apache/commons/beanutils/converters/ByteConverter;

    if-eqz p1, :cond_1

    invoke-direct {v1}, Lorg/apache/commons/beanutils/converters/ByteConverter;-><init>()V

    goto :goto_1

    :cond_1
    sget-object v2, Lorg/apache/commons/beanutils/ConvertUtilsBean;->ZERO:Ljava/lang/Integer;

    invoke-direct {v1, v2}, Lorg/apache/commons/beanutils/converters/ByteConverter;-><init>(Ljava/lang/Object;)V

    :goto_1
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;)V

    .line 651
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    new-instance v1, Lorg/apache/commons/beanutils/converters/CharacterConverter;

    if-eqz p1, :cond_2

    invoke-direct {v1}, Lorg/apache/commons/beanutils/converters/CharacterConverter;-><init>()V

    goto :goto_2

    :cond_2
    sget-object v2, Lorg/apache/commons/beanutils/ConvertUtilsBean;->SPACE:Ljava/lang/Character;

    invoke-direct {v1, v2}, Lorg/apache/commons/beanutils/converters/CharacterConverter;-><init>(Ljava/lang/Object;)V

    :goto_2
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;)V

    .line 652
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    new-instance v1, Lorg/apache/commons/beanutils/converters/DoubleConverter;

    if-eqz p1, :cond_3

    invoke-direct {v1}, Lorg/apache/commons/beanutils/converters/DoubleConverter;-><init>()V

    goto :goto_3

    :cond_3
    sget-object v2, Lorg/apache/commons/beanutils/ConvertUtilsBean;->ZERO:Ljava/lang/Integer;

    invoke-direct {v1, v2}, Lorg/apache/commons/beanutils/converters/DoubleConverter;-><init>(Ljava/lang/Object;)V

    :goto_3
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;)V

    .line 653
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    new-instance v1, Lorg/apache/commons/beanutils/converters/FloatConverter;

    if-eqz p1, :cond_4

    invoke-direct {v1}, Lorg/apache/commons/beanutils/converters/FloatConverter;-><init>()V

    goto :goto_4

    :cond_4
    sget-object v2, Lorg/apache/commons/beanutils/ConvertUtilsBean;->ZERO:Ljava/lang/Integer;

    invoke-direct {v1, v2}, Lorg/apache/commons/beanutils/converters/FloatConverter;-><init>(Ljava/lang/Object;)V

    :goto_4
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;)V

    .line 654
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v1, Lorg/apache/commons/beanutils/converters/IntegerConverter;

    if-eqz p1, :cond_5

    invoke-direct {v1}, Lorg/apache/commons/beanutils/converters/IntegerConverter;-><init>()V

    goto :goto_5

    :cond_5
    sget-object v2, Lorg/apache/commons/beanutils/ConvertUtilsBean;->ZERO:Ljava/lang/Integer;

    invoke-direct {v1, v2}, Lorg/apache/commons/beanutils/converters/IntegerConverter;-><init>(Ljava/lang/Object;)V

    :goto_5
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;)V

    .line 655
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    new-instance v1, Lorg/apache/commons/beanutils/converters/LongConverter;

    if-eqz p1, :cond_6

    invoke-direct {v1}, Lorg/apache/commons/beanutils/converters/LongConverter;-><init>()V

    goto :goto_6

    :cond_6
    sget-object v2, Lorg/apache/commons/beanutils/ConvertUtilsBean;->ZERO:Ljava/lang/Integer;

    invoke-direct {v1, v2}, Lorg/apache/commons/beanutils/converters/LongConverter;-><init>(Ljava/lang/Object;)V

    :goto_6
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;)V

    .line 656
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    new-instance v1, Lorg/apache/commons/beanutils/converters/ShortConverter;

    if-eqz p1, :cond_7

    invoke-direct {v1}, Lorg/apache/commons/beanutils/converters/ShortConverter;-><init>()V

    goto :goto_7

    :cond_7
    sget-object v2, Lorg/apache/commons/beanutils/ConvertUtilsBean;->ZERO:Ljava/lang/Integer;

    invoke-direct {v1, v2}, Lorg/apache/commons/beanutils/converters/ShortConverter;-><init>(Ljava/lang/Object;)V

    :goto_7
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;)V

    .line 657
    return-void
.end method

.method private registerStandard(ZZ)V
    .locals 8
    .param p1, "throwException"    # Z
    .param p2, "defaultNull"    # Z

    .line 686
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/apache/commons/beanutils/ConvertUtilsBean;->ZERO:Ljava/lang/Integer;

    .line 687
    .local v1, "defaultNumber":Ljava/lang/Number;
    :goto_0
    if-eqz p2, :cond_1

    move-object v2, v0

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/math/BigDecimal;

    const-string v3, "0.0"

    invoke-direct {v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 688
    .local v2, "bigDecDeflt":Ljava/math/BigDecimal;
    :goto_1
    if-eqz p2, :cond_2

    move-object v3, v0

    goto :goto_2

    :cond_2
    new-instance v3, Ljava/math/BigInteger;

    const-string v4, "0"

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 689
    .local v3, "bigIntDeflt":Ljava/math/BigInteger;
    :goto_2
    if-eqz p2, :cond_3

    move-object v4, v0

    goto :goto_3

    :cond_3
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 690
    .local v4, "booleanDefault":Ljava/lang/Boolean;
    :goto_3
    if-eqz p2, :cond_4

    move-object v5, v0

    goto :goto_4

    :cond_4
    sget-object v5, Lorg/apache/commons/beanutils/ConvertUtilsBean;->SPACE:Ljava/lang/Character;

    .line 691
    .local v5, "charDefault":Ljava/lang/Character;
    :goto_4
    if-eqz p2, :cond_5

    goto :goto_5

    :cond_5
    const-string v0, ""

    .line 693
    .local v0, "stringDefault":Ljava/lang/String;
    :goto_5
    const-class v6, Ljava/math/BigDecimal;

    new-instance v7, Lorg/apache/commons/beanutils/converters/BigDecimalConverter;

    if-eqz p1, :cond_6

    invoke-direct {v7}, Lorg/apache/commons/beanutils/converters/BigDecimalConverter;-><init>()V

    goto :goto_6

    :cond_6
    invoke-direct {v7, v2}, Lorg/apache/commons/beanutils/converters/BigDecimalConverter;-><init>(Ljava/lang/Object;)V

    :goto_6
    invoke-direct {p0, v6, v7}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;)V

    .line 694
    const-class v6, Ljava/math/BigInteger;

    new-instance v7, Lorg/apache/commons/beanutils/converters/BigIntegerConverter;

    if-eqz p1, :cond_7

    invoke-direct {v7}, Lorg/apache/commons/beanutils/converters/BigIntegerConverter;-><init>()V

    goto :goto_7

    :cond_7
    invoke-direct {v7, v3}, Lorg/apache/commons/beanutils/converters/BigIntegerConverter;-><init>(Ljava/lang/Object;)V

    :goto_7
    invoke-direct {p0, v6, v7}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;)V

    .line 695
    const-class v6, Ljava/lang/Boolean;

    new-instance v7, Lorg/apache/commons/beanutils/converters/BooleanConverter;

    if-eqz p1, :cond_8

    invoke-direct {v7}, Lorg/apache/commons/beanutils/converters/BooleanConverter;-><init>()V

    goto :goto_8

    :cond_8
    invoke-direct {v7, v4}, Lorg/apache/commons/beanutils/converters/BooleanConverter;-><init>(Ljava/lang/Object;)V

    :goto_8
    invoke-direct {p0, v6, v7}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;)V

    .line 696
    const-class v6, Ljava/lang/Byte;

    new-instance v7, Lorg/apache/commons/beanutils/converters/ByteConverter;

    if-eqz p1, :cond_9

    invoke-direct {v7}, Lorg/apache/commons/beanutils/converters/ByteConverter;-><init>()V

    goto :goto_9

    :cond_9
    invoke-direct {v7, v1}, Lorg/apache/commons/beanutils/converters/ByteConverter;-><init>(Ljava/lang/Object;)V

    :goto_9
    invoke-direct {p0, v6, v7}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;)V

    .line 697
    const-class v6, Ljava/lang/Character;

    new-instance v7, Lorg/apache/commons/beanutils/converters/CharacterConverter;

    if-eqz p1, :cond_a

    invoke-direct {v7}, Lorg/apache/commons/beanutils/converters/CharacterConverter;-><init>()V

    goto :goto_a

    :cond_a
    invoke-direct {v7, v5}, Lorg/apache/commons/beanutils/converters/CharacterConverter;-><init>(Ljava/lang/Object;)V

    :goto_a
    invoke-direct {p0, v6, v7}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;)V

    .line 698
    const-class v6, Ljava/lang/Double;

    new-instance v7, Lorg/apache/commons/beanutils/converters/DoubleConverter;

    if-eqz p1, :cond_b

    invoke-direct {v7}, Lorg/apache/commons/beanutils/converters/DoubleConverter;-><init>()V

    goto :goto_b

    :cond_b
    invoke-direct {v7, v1}, Lorg/apache/commons/beanutils/converters/DoubleConverter;-><init>(Ljava/lang/Object;)V

    :goto_b
    invoke-direct {p0, v6, v7}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;)V

    .line 699
    const-class v6, Ljava/lang/Float;

    new-instance v7, Lorg/apache/commons/beanutils/converters/FloatConverter;

    if-eqz p1, :cond_c

    invoke-direct {v7}, Lorg/apache/commons/beanutils/converters/FloatConverter;-><init>()V

    goto :goto_c

    :cond_c
    invoke-direct {v7, v1}, Lorg/apache/commons/beanutils/converters/FloatConverter;-><init>(Ljava/lang/Object;)V

    :goto_c
    invoke-direct {p0, v6, v7}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;)V

    .line 700
    const-class v6, Ljava/lang/Integer;

    new-instance v7, Lorg/apache/commons/beanutils/converters/IntegerConverter;

    if-eqz p1, :cond_d

    invoke-direct {v7}, Lorg/apache/commons/beanutils/converters/IntegerConverter;-><init>()V

    goto :goto_d

    :cond_d
    invoke-direct {v7, v1}, Lorg/apache/commons/beanutils/converters/IntegerConverter;-><init>(Ljava/lang/Object;)V

    :goto_d
    invoke-direct {p0, v6, v7}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;)V

    .line 701
    const-class v6, Ljava/lang/Long;

    new-instance v7, Lorg/apache/commons/beanutils/converters/LongConverter;

    if-eqz p1, :cond_e

    invoke-direct {v7}, Lorg/apache/commons/beanutils/converters/LongConverter;-><init>()V

    goto :goto_e

    :cond_e
    invoke-direct {v7, v1}, Lorg/apache/commons/beanutils/converters/LongConverter;-><init>(Ljava/lang/Object;)V

    :goto_e
    invoke-direct {p0, v6, v7}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;)V

    .line 702
    const-class v6, Ljava/lang/Short;

    new-instance v7, Lorg/apache/commons/beanutils/converters/ShortConverter;

    if-eqz p1, :cond_f

    invoke-direct {v7}, Lorg/apache/commons/beanutils/converters/ShortConverter;-><init>()V

    goto :goto_f

    :cond_f
    invoke-direct {v7, v1}, Lorg/apache/commons/beanutils/converters/ShortConverter;-><init>(Ljava/lang/Object;)V

    :goto_f
    invoke-direct {p0, v6, v7}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;)V

    .line 703
    const-class v6, Ljava/lang/String;

    new-instance v7, Lorg/apache/commons/beanutils/converters/StringConverter;

    if-eqz p1, :cond_10

    invoke-direct {v7}, Lorg/apache/commons/beanutils/converters/StringConverter;-><init>()V

    goto :goto_10

    :cond_10
    invoke-direct {v7, v0}, Lorg/apache/commons/beanutils/converters/StringConverter;-><init>(Ljava/lang/Object;)V

    :goto_10
    invoke-direct {p0, v6, v7}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;)V

    .line 705
    return-void
.end method


# virtual methods
.method public convert(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 548
    .local p2, "targetType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 550
    .local v0, "sourceType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 551
    const-string v1, "\'"

    if-nez p1, :cond_1

    .line 552
    iget-object v2, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Convert null value to type \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 552
    invoke-interface {v2, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_1

    .line 555
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Convert type \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' value \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\' to type \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 555
    invoke-interface {v2, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 560
    :cond_2
    :goto_1
    move-object v1, p1

    .line 561
    .local v1, "converted":Ljava/lang/Object;
    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->lookup(Ljava/lang/Class;Ljava/lang/Class;)Lorg/apache/commons/beanutils/Converter;

    move-result-object v2

    .line 562
    .local v2, "converter":Lorg/apache/commons/beanutils/Converter;
    const-string v3, "  Using converter "

    if-eqz v2, :cond_4

    .line 563
    iget-object v4, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 564
    iget-object v4, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 566
    :cond_3
    invoke-interface {v2, p2, p1}, Lorg/apache/commons/beanutils/Converter;->convert(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 568
    :cond_4
    const-class v4, Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    if-eqz v1, :cond_7

    instance-of v4, v1, Ljava/lang/String;

    if-nez v4, :cond_7

    .line 574
    const-class v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->lookup(Ljava/lang/Class;)Lorg/apache/commons/beanutils/Converter;

    move-result-object v2

    .line 575
    if-eqz v2, :cond_6

    .line 576
    iget-object v4, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 577
    iget-object v4, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 579
    :cond_5
    const-class v3, Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lorg/apache/commons/beanutils/Converter;->convert(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 583
    :cond_6
    if-eqz v1, :cond_7

    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_7

    .line 584
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 588
    :cond_7
    return-object v1
.end method

.method public convert(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 480
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Convert string \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' to class \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 481
    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 484
    :cond_0
    invoke-virtual {p0, p2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->lookup(Ljava/lang/Class;)Lorg/apache/commons/beanutils/Converter;

    move-result-object v0

    .line 485
    .local v0, "converter":Lorg/apache/commons/beanutils/Converter;
    if-nez v0, :cond_1

    .line 486
    const-class v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->lookup(Ljava/lang/Class;)Lorg/apache/commons/beanutils/Converter;

    move-result-object v0

    .line 488
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 489
    iget-object v1, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Using converter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 491
    :cond_2
    invoke-interface {v0, p2, p1}, Lorg/apache/commons/beanutils/Converter;->convert(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public convert([Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .param p1, "values"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 511
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v0, p2

    .line 512
    .local v0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 513
    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 515
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 516
    iget-object v1, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Convert String["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] to class \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "[]\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 516
    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 519
    :cond_1
    invoke-virtual {p0, v0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->lookup(Ljava/lang/Class;)Lorg/apache/commons/beanutils/Converter;

    move-result-object v1

    .line 520
    .local v1, "converter":Lorg/apache/commons/beanutils/Converter;
    if-nez v1, :cond_2

    .line 521
    const-class v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->lookup(Ljava/lang/Class;)Lorg/apache/commons/beanutils/Converter;

    move-result-object v1

    .line 523
    :cond_2
    iget-object v2, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isTraceEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 524
    iget-object v2, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Using converter "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->trace(Ljava/lang/Object;)V

    .line 526
    :cond_3
    array-length v2, p1

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    .line 527
    .local v2, "array":Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_4

    .line 528
    aget-object v4, p1, v3

    invoke-interface {v1, v0, v4}, Lorg/apache/commons/beanutils/Converter;->convert(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 527
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 530
    .end local v3    # "i":I
    :cond_4
    return-object v2
.end method

.method public convert(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 447
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 448
    return-object v0

    .line 449
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 450
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 451
    return-object v0

    .line 453
    :cond_1
    const/4 v1, 0x0

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    .line 454
    if-nez p1, :cond_2

    .line 455
    return-object v0

    .line 457
    :cond_2
    const-class v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->lookup(Ljava/lang/Class;)Lorg/apache/commons/beanutils/Converter;

    move-result-object v0

    .line 458
    .local v0, "converter":Lorg/apache/commons/beanutils/Converter;
    const-class v1, Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lorg/apache/commons/beanutils/Converter;->convert(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 461
    .end local v0    # "converter":Lorg/apache/commons/beanutils/Converter;
    :cond_3
    const-class v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->lookup(Ljava/lang/Class;)Lorg/apache/commons/beanutils/Converter;

    move-result-object v0

    .line 462
    .restart local v0    # "converter":Lorg/apache/commons/beanutils/Converter;
    const-class v1, Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lorg/apache/commons/beanutils/Converter;->convert(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public deregister()V
    .locals 2

    .line 598
    iget-object v0, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->converters:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-virtual {v0}, Lorg/apache/commons/beanutils/WeakFastHashMap;->clear()V

    .line 600
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->registerPrimitives(Z)V

    .line 601
    invoke-direct {p0, v0, v0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->registerStandard(ZZ)V

    .line 602
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->registerOther(Z)V

    .line 603
    invoke-direct {p0, v0, v0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->registerArrays(ZI)V

    .line 604
    const-class v0, Ljava/math/BigDecimal;

    new-instance v1, Lorg/apache/commons/beanutils/converters/BigDecimalConverter;

    invoke-direct {v1}, Lorg/apache/commons/beanutils/converters/BigDecimalConverter;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;)V

    .line 605
    const-class v0, Ljava/math/BigInteger;

    new-instance v1, Lorg/apache/commons/beanutils/converters/BigIntegerConverter;

    invoke-direct {v1}, Lorg/apache/commons/beanutils/converters/BigIntegerConverter;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Ljava/lang/Class;Lorg/apache/commons/beanutils/Converter;)V

    .line 606
    return-void
.end method

.method public deregister(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 819
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->converters:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/beanutils/WeakFastHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    return-void
.end method

.method public getDefaultBoolean()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 183
    iget-object v0, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->defaultBoolean:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getDefaultByte()B
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 216
    iget-object v0, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->defaultByte:Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0
.end method

.method public getDefaultCharacter()C
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 249
    iget-object v0, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->defaultCharacter:Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    return v0
.end method

.method public getDefaultDouble()D
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 284
    iget-object v0, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->defaultDouble:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultFloat()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 317
    iget-object v0, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->defaultFloat:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getDefaultInteger()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 350
    iget-object v0, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->defaultInteger:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getDefaultLong()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 383
    iget-object v0, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->defaultLong:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultShort()S
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 416
    sget-object v0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->defaultShort:Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    return v0
.end method

.method public lookup(Ljava/lang/Class;)Lorg/apache/commons/beanutils/Converter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/apache/commons/beanutils/Converter;"
        }
    .end annotation

    .line 834
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->converters:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/beanutils/WeakFastHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/beanutils/Converter;

    return-object v0
.end method

.method public lookup(Ljava/lang/Class;Ljava/lang/Class;)Lorg/apache/commons/beanutils/Converter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/apache/commons/beanutils/Converter;"
        }
    .end annotation

    .line 849
    .local p1, "sourceType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "targetType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p2, :cond_9

    .line 852
    if-nez p1, :cond_0

    .line 853
    invoke-virtual {p0, p2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->lookup(Ljava/lang/Class;)Lorg/apache/commons/beanutils/Converter;

    move-result-object v0

    return-object v0

    .line 856
    :cond_0
    const/4 v0, 0x0

    .line 858
    .local v0, "converter":Lorg/apache/commons/beanutils/Converter;
    const-class v1, Ljava/lang/String;

    if-ne p2, v1, :cond_4

    .line 859
    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->lookup(Ljava/lang/Class;)Lorg/apache/commons/beanutils/Converter;

    move-result-object v0

    .line 860
    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_1

    const-class v1, Ljava/util/Collection;

    .line 861
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 862
    :cond_1
    const-class v1, [Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->lookup(Ljava/lang/Class;)Lorg/apache/commons/beanutils/Converter;

    move-result-object v0

    .line 864
    :cond_2
    if-nez v0, :cond_3

    .line 865
    const-class v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->lookup(Ljava/lang/Class;)Lorg/apache/commons/beanutils/Converter;

    move-result-object v0

    .line 867
    :cond_3
    return-object v0

    .line 871
    :cond_4
    const-class v1, [Ljava/lang/String;

    if-ne p2, v1, :cond_8

    .line 872
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_5

    const-class v1, Ljava/util/Collection;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 873
    :cond_5
    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->lookup(Ljava/lang/Class;)Lorg/apache/commons/beanutils/Converter;

    move-result-object v0

    .line 875
    :cond_6
    if-nez v0, :cond_7

    .line 876
    const-class v1, [Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->lookup(Ljava/lang/Class;)Lorg/apache/commons/beanutils/Converter;

    move-result-object v0

    .line 878
    :cond_7
    return-object v0

    .line 881
    :cond_8
    invoke-virtual {p0, p2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->lookup(Ljava/lang/Class;)Lorg/apache/commons/beanutils/Converter;

    move-result-object v1

    return-object v1

    .line 850
    .end local v0    # "converter":Lorg/apache/commons/beanutils/Converter;
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Target type is missing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public register(Lorg/apache/commons/beanutils/Converter;Ljava/lang/Class;)V
    .locals 1
    .param p1, "converter"    # Lorg/apache/commons/beanutils/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/beanutils/Converter;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 895
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->converters:Lorg/apache/commons/beanutils/WeakFastHashMap;

    invoke-virtual {v0, p2, p1}, Lorg/apache/commons/beanutils/WeakFastHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 897
    return-void
.end method

.method public register(ZZI)V
    .locals 0
    .param p1, "throwException"    # Z
    .param p2, "defaultNull"    # Z
    .param p3, "defaultArraySize"    # I

    .line 624
    invoke-direct {p0, p1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->registerPrimitives(Z)V

    .line 625
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->registerStandard(ZZ)V

    .line 626
    invoke-direct {p0, p1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->registerOther(Z)V

    .line 627
    invoke-direct {p0, p1, p3}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->registerArrays(ZI)V

    .line 628
    return-void
.end method

.method public setDefaultBoolean(Z)V
    .locals 2
    .param p1, "newDefaultBoolean"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 194
    if-eqz p1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->defaultBoolean:Ljava/lang/Boolean;

    .line 195
    new-instance v0, Lorg/apache/commons/beanutils/converters/BooleanConverter;

    iget-object v1, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->defaultBoolean:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Lorg/apache/commons/beanutils/converters/BooleanConverter;-><init>(Ljava/lang/Object;)V

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Lorg/apache/commons/beanutils/Converter;Ljava/lang/Class;)V

    .line 196
    new-instance v0, Lorg/apache/commons/beanutils/converters/BooleanConverter;

    iget-object v1, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->defaultBoolean:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Lorg/apache/commons/beanutils/converters/BooleanConverter;-><init>(Ljava/lang/Object;)V

    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Lorg/apache/commons/beanutils/Converter;Ljava/lang/Class;)V

    .line 197
    return-void
.end method

.method public setDefaultByte(B)V
    .locals 2
    .param p1, "newDefaultByte"    # B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 227
    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, p1}, Ljava/lang/Byte;-><init>(B)V

    iput-object v0, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->defaultByte:Ljava/lang/Byte;

    .line 228
    new-instance v0, Lorg/apache/commons/beanutils/converters/ByteConverter;

    iget-object v1, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->defaultByte:Ljava/lang/Byte;

    invoke-direct {v0, v1}, Lorg/apache/commons/beanutils/converters/ByteConverter;-><init>(Ljava/lang/Object;)V

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Lorg/apache/commons/beanutils/Converter;Ljava/lang/Class;)V

    .line 229
    new-instance v0, Lorg/apache/commons/beanutils/converters/ByteConverter;

    iget-object v1, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->defaultByte:Ljava/lang/Byte;

    invoke-direct {v0, v1}, Lorg/apache/commons/beanutils/converters/ByteConverter;-><init>(Ljava/lang/Object;)V

    const-class v1, Ljava/lang/Byte;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Lorg/apache/commons/beanutils/Converter;Ljava/lang/Class;)V

    .line 230
    return-void
.end method

.method public setDefaultCharacter(C)V
    .locals 2
    .param p1, "newDefaultCharacter"    # C
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 260
    new-instance v0, Ljava/lang/Character;

    invoke-direct {v0, p1}, Ljava/lang/Character;-><init>(C)V

    iput-object v0, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->defaultCharacter:Ljava/lang/Character;

    .line 261
    new-instance v1, Lorg/apache/commons/beanutils/converters/CharacterConverter;

    invoke-direct {v1, v0}, Lorg/apache/commons/beanutils/converters/CharacterConverter;-><init>(Ljava/lang/Object;)V

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Lorg/apache/commons/beanutils/Converter;Ljava/lang/Class;)V

    .line 263
    new-instance v0, Lorg/apache/commons/beanutils/converters/CharacterConverter;

    iget-object v1, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->defaultCharacter:Ljava/lang/Character;

    invoke-direct {v0, v1}, Lorg/apache/commons/beanutils/converters/CharacterConverter;-><init>(Ljava/lang/Object;)V

    const-class v1, Ljava/lang/Character;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Lorg/apache/commons/beanutils/Converter;Ljava/lang/Class;)V

    .line 265
    return-void
.end method

.method public setDefaultDouble(D)V
    .locals 2
    .param p1, "newDefaultDouble"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 295
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p1, p2}, Ljava/lang/Double;-><init>(D)V

    iput-object v0, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->defaultDouble:Ljava/lang/Double;

    .line 296
    new-instance v0, Lorg/apache/commons/beanutils/converters/DoubleConverter;

    iget-object v1, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->defaultDouble:Ljava/lang/Double;

    invoke-direct {v0, v1}, Lorg/apache/commons/beanutils/converters/DoubleConverter;-><init>(Ljava/lang/Object;)V

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Lorg/apache/commons/beanutils/Converter;Ljava/lang/Class;)V

    .line 297
    new-instance v0, Lorg/apache/commons/beanutils/converters/DoubleConverter;

    iget-object v1, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->defaultDouble:Ljava/lang/Double;

    invoke-direct {v0, v1}, Lorg/apache/commons/beanutils/converters/DoubleConverter;-><init>(Ljava/lang/Object;)V

    const-class v1, Ljava/lang/Double;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Lorg/apache/commons/beanutils/Converter;Ljava/lang/Class;)V

    .line 298
    return-void
.end method

.method public setDefaultFloat(F)V
    .locals 2
    .param p1, "newDefaultFloat"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 328
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p1}, Ljava/lang/Float;-><init>(F)V

    iput-object v0, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->defaultFloat:Ljava/lang/Float;

    .line 329
    new-instance v0, Lorg/apache/commons/beanutils/converters/FloatConverter;

    iget-object v1, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->defaultFloat:Ljava/lang/Float;

    invoke-direct {v0, v1}, Lorg/apache/commons/beanutils/converters/FloatConverter;-><init>(Ljava/lang/Object;)V

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Lorg/apache/commons/beanutils/Converter;Ljava/lang/Class;)V

    .line 330
    new-instance v0, Lorg/apache/commons/beanutils/converters/FloatConverter;

    iget-object v1, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->defaultFloat:Ljava/lang/Float;

    invoke-direct {v0, v1}, Lorg/apache/commons/beanutils/converters/FloatConverter;-><init>(Ljava/lang/Object;)V

    const-class v1, Ljava/lang/Float;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Lorg/apache/commons/beanutils/Converter;Ljava/lang/Class;)V

    .line 331
    return-void
.end method

.method public setDefaultInteger(I)V
    .locals 2
    .param p1, "newDefaultInteger"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 361
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->defaultInteger:Ljava/lang/Integer;

    .line 362
    new-instance v0, Lorg/apache/commons/beanutils/converters/IntegerConverter;

    iget-object v1, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->defaultInteger:Ljava/lang/Integer;

    invoke-direct {v0, v1}, Lorg/apache/commons/beanutils/converters/IntegerConverter;-><init>(Ljava/lang/Object;)V

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Lorg/apache/commons/beanutils/Converter;Ljava/lang/Class;)V

    .line 363
    new-instance v0, Lorg/apache/commons/beanutils/converters/IntegerConverter;

    iget-object v1, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->defaultInteger:Ljava/lang/Integer;

    invoke-direct {v0, v1}, Lorg/apache/commons/beanutils/converters/IntegerConverter;-><init>(Ljava/lang/Object;)V

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Lorg/apache/commons/beanutils/Converter;Ljava/lang/Class;)V

    .line 364
    return-void
.end method

.method public setDefaultLong(J)V
    .locals 2
    .param p1, "newDefaultLong"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 394
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    iput-object v0, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->defaultLong:Ljava/lang/Long;

    .line 395
    new-instance v0, Lorg/apache/commons/beanutils/converters/LongConverter;

    iget-object v1, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->defaultLong:Ljava/lang/Long;

    invoke-direct {v0, v1}, Lorg/apache/commons/beanutils/converters/LongConverter;-><init>(Ljava/lang/Object;)V

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Lorg/apache/commons/beanutils/Converter;Ljava/lang/Class;)V

    .line 396
    new-instance v0, Lorg/apache/commons/beanutils/converters/LongConverter;

    iget-object v1, p0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->defaultLong:Ljava/lang/Long;

    invoke-direct {v0, v1}, Lorg/apache/commons/beanutils/converters/LongConverter;-><init>(Ljava/lang/Object;)V

    const-class v1, Ljava/lang/Long;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Lorg/apache/commons/beanutils/Converter;Ljava/lang/Class;)V

    .line 397
    return-void
.end method

.method public setDefaultShort(S)V
    .locals 2
    .param p1, "newDefaultShort"    # S
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 427
    new-instance v0, Ljava/lang/Short;

    invoke-direct {v0, p1}, Ljava/lang/Short;-><init>(S)V

    sput-object v0, Lorg/apache/commons/beanutils/ConvertUtilsBean;->defaultShort:Ljava/lang/Short;

    .line 428
    new-instance v0, Lorg/apache/commons/beanutils/converters/ShortConverter;

    sget-object v1, Lorg/apache/commons/beanutils/ConvertUtilsBean;->defaultShort:Ljava/lang/Short;

    invoke-direct {v0, v1}, Lorg/apache/commons/beanutils/converters/ShortConverter;-><init>(Ljava/lang/Object;)V

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Lorg/apache/commons/beanutils/Converter;Ljava/lang/Class;)V

    .line 429
    new-instance v0, Lorg/apache/commons/beanutils/converters/ShortConverter;

    sget-object v1, Lorg/apache/commons/beanutils/ConvertUtilsBean;->defaultShort:Ljava/lang/Short;

    invoke-direct {v0, v1}, Lorg/apache/commons/beanutils/converters/ShortConverter;-><init>(Ljava/lang/Object;)V

    const-class v1, Ljava/lang/Short;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/beanutils/ConvertUtilsBean;->register(Lorg/apache/commons/beanutils/Converter;Ljava/lang/Class;)V

    .line 430
    return-void
.end method
