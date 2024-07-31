.class Lorg/apache/commons/beanutils/WrapDynaClass$CacheKey;
.super Ljava/lang/Object;
.source "WrapDynaClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/beanutils/WrapDynaClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheKey"
.end annotation


# instance fields
.field private final beanClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final propUtils:Lorg/apache/commons/beanutils/PropertyUtilsBean;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lorg/apache/commons/beanutils/PropertyUtilsBean;)V
    .locals 0
    .param p2, "pu"    # Lorg/apache/commons/beanutils/PropertyUtilsBean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/apache/commons/beanutils/PropertyUtilsBean;",
            ")V"
        }
    .end annotation

    .line 513
    .local p1, "beanCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 514
    iput-object p1, p0, Lorg/apache/commons/beanutils/WrapDynaClass$CacheKey;->beanClass:Ljava/lang/Class;

    .line 515
    iput-object p2, p0, Lorg/apache/commons/beanutils/WrapDynaClass$CacheKey;->propUtils:Lorg/apache/commons/beanutils/PropertyUtilsBean;

    .line 516
    return-void
.end method

.method static synthetic access$200(Lorg/apache/commons/beanutils/WrapDynaClass$CacheKey;)Ljava/lang/Class;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/beanutils/WrapDynaClass$CacheKey;

    .line 500
    iget-object v0, p0, Lorg/apache/commons/beanutils/WrapDynaClass$CacheKey;->beanClass:Ljava/lang/Class;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 529
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 530
    return v0

    .line 532
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/beanutils/WrapDynaClass$CacheKey;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 533
    return v2

    .line 536
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/beanutils/WrapDynaClass$CacheKey;

    .line 537
    .local v1, "c":Lorg/apache/commons/beanutils/WrapDynaClass$CacheKey;
    iget-object v3, p0, Lorg/apache/commons/beanutils/WrapDynaClass$CacheKey;->beanClass:Ljava/lang/Class;

    iget-object v4, v1, Lorg/apache/commons/beanutils/WrapDynaClass$CacheKey;->beanClass:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/apache/commons/beanutils/WrapDynaClass$CacheKey;->propUtils:Lorg/apache/commons/beanutils/PropertyUtilsBean;

    iget-object v4, v1, Lorg/apache/commons/beanutils/WrapDynaClass$CacheKey;->propUtils:Lorg/apache/commons/beanutils/PropertyUtilsBean;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 520
    const/16 v0, 0x1f

    .line 521
    .local v0, "factor":I
    const/16 v1, 0x11

    .line 522
    .local v1, "result":I
    iget-object v2, p0, Lorg/apache/commons/beanutils/WrapDynaClass$CacheKey;->beanClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v1

    .line 523
    .end local v1    # "result":I
    .local v2, "result":I
    iget-object v1, p0, Lorg/apache/commons/beanutils/WrapDynaClass$CacheKey;->propUtils:Lorg/apache/commons/beanutils/PropertyUtilsBean;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v2

    .line 524
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method
