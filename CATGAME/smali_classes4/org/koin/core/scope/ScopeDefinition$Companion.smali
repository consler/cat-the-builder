.class public final Lorg/koin/core/scope/ScopeDefinition$Companion;
.super Ljava/lang/Object;
.source "ScopeDefinition.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/koin/core/scope/ScopeDefinition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\t\u001a\u00020\nR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "Lorg/koin/core/scope/ScopeDefinition$Companion;",
        "",
        "()V",
        "ROOT_SCOPE_ID",
        "",
        "ROOT_SCOPE_QUALIFIER",
        "Lorg/koin/core/qualifier/StringQualifier;",
        "getROOT_SCOPE_QUALIFIER",
        "()Lorg/koin/core/qualifier/StringQualifier;",
        "rootDefinition",
        "Lorg/koin/core/scope/ScopeDefinition;",
        "koin-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Lorg/koin/core/scope/ScopeDefinition$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getROOT_SCOPE_QUALIFIER()Lorg/koin/core/qualifier/StringQualifier;
    .locals 1

    .line 97
    invoke-static {}, Lorg/koin/core/scope/ScopeDefinition;->access$getROOT_SCOPE_QUALIFIER$cp()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v0

    return-object v0
.end method

.method public final rootDefinition()Lorg/koin/core/scope/ScopeDefinition;
    .locals 7

    .line 98
    new-instance v6, Lorg/koin/core/scope/ScopeDefinition;

    move-object v0, p0

    check-cast v0, Lorg/koin/core/scope/ScopeDefinition$Companion;

    invoke-virtual {p0}, Lorg/koin/core/scope/ScopeDefinition$Companion;->getROOT_SCOPE_QUALIFIER()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/koin/core/qualifier/Qualifier;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/koin/core/scope/ScopeDefinition;-><init>(Lorg/koin/core/qualifier/Qualifier;ZLjava/util/HashSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6
.end method
