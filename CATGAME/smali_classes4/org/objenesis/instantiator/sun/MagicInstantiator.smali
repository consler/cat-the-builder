.class public Lorg/objenesis/instantiator/sun/MagicInstantiator;
.super Lorg/objenesis/instantiator/basic/DelegatingToExoticInstantiator;
.source "MagicInstantiator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/objenesis/instantiator/basic/DelegatingToExoticInstantiator<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lorg/objenesis/instantiator/annotations/Instantiator;
    value = .enum Lorg/objenesis/instantiator/annotations/Typology;->STANDARD:Lorg/objenesis/instantiator/annotations/Typology;
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "org.objenesis.instantiator.exotic.MagicInstantiator"

    .line 31
    invoke-direct {p0, v0, p1}, Lorg/objenesis/instantiator/basic/DelegatingToExoticInstantiator;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method
