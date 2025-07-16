.class Lorg/apache/commons/collections/map/AbstractReferenceMap$SoftRef;
.super Ljava/lang/ref/SoftReference;
.source "AbstractReferenceMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/map/AbstractReferenceMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SoftRef"
.end annotation


# instance fields
.field private hash:I


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0

    .line 885
    invoke-direct {p0, p2, p3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 886
    iput p1, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$SoftRef;->hash:I

    return-void
.end method


# virtual methods
.method public hashCode()I
    .locals 1

    .line 890
    iget v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$SoftRef;->hash:I

    return v0
.end method
