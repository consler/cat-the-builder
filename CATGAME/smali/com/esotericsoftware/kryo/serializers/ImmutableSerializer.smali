.class public abstract Lcom/esotericsoftware/kryo/serializers/ImmutableSerializer;
.super Lcom/esotericsoftware/kryo/Serializer;
.source "ImmutableSerializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/esotericsoftware/kryo/Serializer<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/Serializer;-><init>()V

    const/4 v0, 0x1

    .line 29
    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/serializers/ImmutableSerializer;->setImmutable(Z)V

    return-void
.end method
