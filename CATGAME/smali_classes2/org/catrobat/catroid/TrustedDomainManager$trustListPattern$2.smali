.class final Lorg/catrobat/catroid/TrustedDomainManager$trustListPattern$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TrustedDomainManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/TrustedDomainManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/regex/Pattern;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Ljava/util/regex/Pattern;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/catrobat/catroid/TrustedDomainManager$trustListPattern$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/catrobat/catroid/TrustedDomainManager$trustListPattern$2;

    invoke-direct {v0}, Lorg/catrobat/catroid/TrustedDomainManager$trustListPattern$2;-><init>()V

    sput-object v0, Lorg/catrobat/catroid/TrustedDomainManager$trustListPattern$2;->INSTANCE:Lorg/catrobat/catroid/TrustedDomainManager$trustListPattern$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lorg/catrobat/catroid/TrustedDomainManager$trustListPattern$2;->invoke()Ljava/util/regex/Pattern;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/regex/Pattern;
    .locals 1

    .line 45
    sget-object v0, Lorg/catrobat/catroid/TrustedDomainManager;->INSTANCE:Lorg/catrobat/catroid/TrustedDomainManager;

    invoke-static {v0}, Lorg/catrobat/catroid/TrustedDomainManager;->access$initializeTrustListPattern(Lorg/catrobat/catroid/TrustedDomainManager;)Ljava/util/regex/Pattern;

    move-result-object v0

    return-object v0
.end method
