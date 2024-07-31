.class public final Lorg/apache/commons/beanutils/converters/BooleanConverter;
.super Lorg/apache/commons/beanutils/converters/AbstractConverter;
.source "BooleanConverter.java"


# static fields
.field public static final NO_DEFAULT:Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private falseStrings:[Ljava/lang/String;

.field private trueStrings:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 157
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/apache/commons/beanutils/converters/BooleanConverter;->NO_DEFAULT:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 65
    invoke-direct {p0}, Lorg/apache/commons/beanutils/converters/AbstractConverter;-><init>()V

    .line 165
    const-string v0, "true"

    const-string v1, "yes"

    const-string v2, "y"

    const-string v3, "on"

    const-string v4, "1"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/converters/BooleanConverter;->trueStrings:[Ljava/lang/String;

    .line 170
    const-string v0, "false"

    const-string v1, "no"

    const-string v2, "n"

    const-string v3, "off"

    const-string v4, "0"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/converters/BooleanConverter;->falseStrings:[Ljava/lang/String;

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 5
    .param p1, "defaultValue"    # Ljava/lang/Object;

    .line 82
    invoke-direct {p0}, Lorg/apache/commons/beanutils/converters/AbstractConverter;-><init>()V

    .line 165
    const-string v0, "true"

    const-string v1, "yes"

    const-string v2, "y"

    const-string v3, "on"

    const-string v4, "1"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/converters/BooleanConverter;->trueStrings:[Ljava/lang/String;

    .line 170
    const-string v0, "false"

    const-string v1, "no"

    const-string v2, "n"

    const-string v3, "off"

    const-string v4, "0"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/converters/BooleanConverter;->falseStrings:[Ljava/lang/String;

    .line 83
    sget-object v0, Lorg/apache/commons/beanutils/converters/BooleanConverter;->NO_DEFAULT:Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    .line 84
    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/converters/BooleanConverter;->setDefaultValue(Ljava/lang/Object;)V

    .line 86
    :cond_0
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .param p1, "trueStrings"    # [Ljava/lang/String;
    .param p2, "falseStrings"    # [Ljava/lang/String;

    .line 107
    invoke-direct {p0}, Lorg/apache/commons/beanutils/converters/AbstractConverter;-><init>()V

    .line 165
    const-string v0, "true"

    const-string v1, "yes"

    const-string v2, "y"

    const-string v3, "on"

    const-string v4, "1"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/converters/BooleanConverter;->trueStrings:[Ljava/lang/String;

    .line 170
    const-string v0, "false"

    const-string v1, "no"

    const-string v2, "n"

    const-string v3, "off"

    const-string v4, "0"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/converters/BooleanConverter;->falseStrings:[Ljava/lang/String;

    .line 108
    invoke-static {p1}, Lorg/apache/commons/beanutils/converters/BooleanConverter;->copyStrings([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/converters/BooleanConverter;->trueStrings:[Ljava/lang/String;

    .line 109
    invoke-static {p2}, Lorg/apache/commons/beanutils/converters/BooleanConverter;->copyStrings([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/converters/BooleanConverter;->falseStrings:[Ljava/lang/String;

    .line 110
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p1, "trueStrings"    # [Ljava/lang/String;
    .param p2, "falseStrings"    # [Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/Object;

    .line 137
    invoke-direct {p0}, Lorg/apache/commons/beanutils/converters/AbstractConverter;-><init>()V

    .line 165
    const-string v0, "true"

    const-string v1, "yes"

    const-string v2, "y"

    const-string v3, "on"

    const-string v4, "1"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/converters/BooleanConverter;->trueStrings:[Ljava/lang/String;

    .line 170
    const-string v0, "false"

    const-string v1, "no"

    const-string v2, "n"

    const-string v3, "off"

    const-string v4, "0"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/converters/BooleanConverter;->falseStrings:[Ljava/lang/String;

    .line 138
    invoke-static {p1}, Lorg/apache/commons/beanutils/converters/BooleanConverter;->copyStrings([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/converters/BooleanConverter;->trueStrings:[Ljava/lang/String;

    .line 139
    invoke-static {p2}, Lorg/apache/commons/beanutils/converters/BooleanConverter;->copyStrings([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/beanutils/converters/BooleanConverter;->falseStrings:[Ljava/lang/String;

    .line 140
    sget-object v0, Lorg/apache/commons/beanutils/converters/BooleanConverter;->NO_DEFAULT:Ljava/lang/Object;

    if-eq p3, v0, :cond_0

    .line 141
    invoke-virtual {p0, p3}, Lorg/apache/commons/beanutils/converters/BooleanConverter;->setDefaultValue(Ljava/lang/Object;)V

    .line 143
    :cond_0
    return-void
.end method

.method private static copyStrings([Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p0, "src"    # [Ljava/lang/String;

    .line 240
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/String;

    .line 241
    .local v0, "dst":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 242
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 241
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 244
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected convertToType(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 208
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 213
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "stringValue":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/commons/beanutils/converters/BooleanConverter;->trueStrings:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 216
    .local v5, "trueString":Ljava/lang/String;
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 217
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 215
    .end local v5    # "trueString":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 221
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/beanutils/converters/BooleanConverter;->falseStrings:[Ljava/lang/String;

    array-length v2, v1

    :goto_1
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    .line 222
    .local v4, "falseString":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 223
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 221
    .end local v4    # "falseString":Ljava/lang/String;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 228
    .end local v0    # "stringValue":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/beanutils/converters/BooleanConverter;->conversionException(Ljava/lang/Class;Ljava/lang/Object;)Lorg/apache/commons/beanutils/ConversionException;

    move-result-object v0

    throw v0
.end method

.method protected getDefaultType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 182
    const-class v0, Ljava/lang/Boolean;

    return-object v0
.end method
