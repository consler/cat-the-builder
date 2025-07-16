.class public final Lorg/koin/core/KoinComponent$DefaultImpls;
.super Ljava/lang/Object;
.source "KoinComponent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/koin/core/KoinComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public static getKoin(Lorg/koin/core/KoinComponent;)Lorg/koin/core/Koin;
    .locals 0

    .line 32
    sget-object p0, Lorg/koin/core/context/KoinContextHandler;->INSTANCE:Lorg/koin/core/context/KoinContextHandler;

    invoke-virtual {p0}, Lorg/koin/core/context/KoinContextHandler;->get()Lorg/koin/core/Koin;

    move-result-object p0

    return-object p0
.end method
