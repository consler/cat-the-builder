.class public interface abstract Lorg/koin/core/context/KoinContext;
.super Ljava/lang/Object;
.source "KoinContext.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\n\u0010\u0004\u001a\u0004\u0018\u00010\u0003H&J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H&J\u0008\u0010\t\u001a\u00020\u0006H&\u00a8\u0006\n"
    }
    d2 = {
        "Lorg/koin/core/context/KoinContext;",
        "",
        "get",
        "Lorg/koin/core/Koin;",
        "getOrNull",
        "setup",
        "",
        "koinApplication",
        "Lorg/koin/core/KoinApplication;",
        "stop",
        "koin-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# virtual methods
.method public abstract get()Lorg/koin/core/Koin;
.end method

.method public abstract getOrNull()Lorg/koin/core/Koin;
.end method

.method public abstract setup(Lorg/koin/core/KoinApplication;)V
.end method

.method public abstract stop()V
.end method
