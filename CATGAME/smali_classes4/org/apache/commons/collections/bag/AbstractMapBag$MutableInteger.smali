.class public Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;
.super Ljava/lang/Object;
.source "AbstractMapBag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/bag/AbstractMapBag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "MutableInteger"
.end annotation


# instance fields
.field protected value:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "value"    # I

    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 413
    iput p1, p0, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;->value:I

    .line 414
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 417
    instance-of v0, p1, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 418
    return v1

    .line 420
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;

    iget v0, v0, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;->value:I

    iget v2, p0, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;->value:I

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 424
    iget v0, p0, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;->value:I

    return v0
.end method
