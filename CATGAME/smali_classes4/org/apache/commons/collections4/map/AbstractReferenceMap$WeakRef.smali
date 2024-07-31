.class Lorg/apache/commons/collections4/map/AbstractReferenceMap$WeakRef;
.super Ljava/lang/ref/WeakReference;
.source "AbstractReferenceMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/AbstractReferenceMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WeakRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/WeakReference<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final hash:I


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .param p1, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;",
            "Ljava/lang/ref/ReferenceQueue<",
            "-TT;>;)V"
        }
    .end annotation

    .line 999
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractReferenceMap$WeakRef;, "Lorg/apache/commons/collections4/map/AbstractReferenceMap$WeakRef<TT;>;"
    .local p2, "r":Ljava/lang/Object;, "TT;"
    .local p3, "q":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<-TT;>;"
    invoke-direct {p0, p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 1000
    iput p1, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$WeakRef;->hash:I

    .line 1001
    return-void
.end method


# virtual methods
.method public hashCode()I
    .locals 1

    .line 1005
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractReferenceMap$WeakRef;, "Lorg/apache/commons/collections4/map/AbstractReferenceMap$WeakRef<TT;>;"
    iget v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$WeakRef;->hash:I

    return v0
.end method
