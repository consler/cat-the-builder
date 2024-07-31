.class public final Lorg/catrobat/catroid/stage/SpeechRecognitionHolderFactory;
.super Ljava/lang/Object;
.source "SpeechRecognitionHolderFactory.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/stage/SpeechRecognitionHolderFactory$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u000e\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\t\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u0003@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lorg/catrobat/catroid/stage/SpeechRecognitionHolderFactory;",
        "",
        "gmsSpeechRecognitionHolder",
        "Lorg/catrobat/catroid/stage/SpeechRecognitionHolderInterface;",
        "hmsSpeechRecognitionHolder",
        "mobileServiceAvailability",
        "Lorg/catrobat/catroid/utils/MobileServiceAvailability;",
        "(Lorg/catrobat/catroid/stage/SpeechRecognitionHolderInterface;Lorg/catrobat/catroid/stage/SpeechRecognitionHolderInterface;Lorg/catrobat/catroid/utils/MobileServiceAvailability;)V",
        "<set-?>",
        "instance",
        "getInstance",
        "()Lorg/catrobat/catroid/stage/SpeechRecognitionHolderInterface;",
        "isRecognitionAvailable",
        "",
        "context",
        "Landroid/content/Context;",
        "Companion",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final Companion:Lorg/catrobat/catroid/stage/SpeechRecognitionHolderFactory$Companion;

.field private static final dummy:Lorg/catrobat/catroid/stage/SpeechRecognitionHolderFactory$Companion$dummy$1;


# instance fields
.field private final gmsSpeechRecognitionHolder:Lorg/catrobat/catroid/stage/SpeechRecognitionHolderInterface;

.field private final hmsSpeechRecognitionHolder:Lorg/catrobat/catroid/stage/SpeechRecognitionHolderInterface;

.field private instance:Lorg/catrobat/catroid/stage/SpeechRecognitionHolderInterface;

.field private final mobileServiceAvailability:Lorg/catrobat/catroid/utils/MobileServiceAvailability;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/catroid/stage/SpeechRecognitionHolderFactory$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/stage/SpeechRecognitionHolderFactory$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/catroid/stage/SpeechRecognitionHolderFactory;->Companion:Lorg/catrobat/catroid/stage/SpeechRecognitionHolderFactory$Companion;

    .line 35
    new-instance v0, Lorg/catrobat/catroid/stage/SpeechRecognitionHolderFactory$Companion$dummy$1;

    invoke-direct {v0}, Lorg/catrobat/catroid/stage/SpeechRecognitionHolderFactory$Companion$dummy$1;-><init>()V

    sput-object v0, Lorg/catrobat/catroid/stage/SpeechRecognitionHolderFactory;->dummy:Lorg/catrobat/catroid/stage/SpeechRecognitionHolderFactory$Companion$dummy$1;

    return-void
.end method

.method public constructor <init>(Lorg/catrobat/catroid/stage/SpeechRecognitionHolderInterface;Lorg/catrobat/catroid/stage/SpeechRecognitionHolderInterface;Lorg/catrobat/catroid/utils/MobileServiceAvailability;)V
    .locals 1
    .param p1, "gmsSpeechRecognitionHolder"    # Lorg/catrobat/catroid/stage/SpeechRecognitionHolderInterface;
    .param p2, "hmsSpeechRecognitionHolder"    # Lorg/catrobat/catroid/stage/SpeechRecognitionHolderInterface;
    .param p3, "mobileServiceAvailability"    # Lorg/catrobat/catroid/utils/MobileServiceAvailability;

    const-string v0, "gmsSpeechRecognitionHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hmsSpeechRecognitionHolder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mobileServiceAvailability"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/stage/SpeechRecognitionHolderFactory;->gmsSpeechRecognitionHolder:Lorg/catrobat/catroid/stage/SpeechRecognitionHolderInterface;

    iput-object p2, p0, Lorg/catrobat/catroid/stage/SpeechRecognitionHolderFactory;->hmsSpeechRecognitionHolder:Lorg/catrobat/catroid/stage/SpeechRecognitionHolderInterface;

    iput-object p3, p0, Lorg/catrobat/catroid/stage/SpeechRecognitionHolderFactory;->mobileServiceAvailability:Lorg/catrobat/catroid/utils/MobileServiceAvailability;

    .line 51
    sget-object v0, Lorg/catrobat/catroid/stage/SpeechRecognitionHolderFactory;->dummy:Lorg/catrobat/catroid/stage/SpeechRecognitionHolderFactory$Companion$dummy$1;

    check-cast v0, Lorg/catrobat/catroid/stage/SpeechRecognitionHolderInterface;

    iput-object v0, p0, Lorg/catrobat/catroid/stage/SpeechRecognitionHolderFactory;->instance:Lorg/catrobat/catroid/stage/SpeechRecognitionHolderInterface;

    return-void
.end method


# virtual methods
.method public final getInstance()Lorg/catrobat/catroid/stage/SpeechRecognitionHolderInterface;
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/catrobat/catroid/stage/SpeechRecognitionHolderFactory;->instance:Lorg/catrobat/catroid/stage/SpeechRecognitionHolderInterface;

    return-object v0
.end method

.method public final isRecognitionAvailable(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    nop

    .line 56
    iget-object v0, p0, Lorg/catrobat/catroid/stage/SpeechRecognitionHolderFactory;->mobileServiceAvailability:Lorg/catrobat/catroid/utils/MobileServiceAvailability;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/utils/MobileServiceAvailability;->isGmsAvailable(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lorg/catrobat/catroid/stage/SpeechRecognitionHolderFactory;->gmsSpeechRecognitionHolder:Lorg/catrobat/catroid/stage/SpeechRecognitionHolderInterface;

    iput-object v0, p0, Lorg/catrobat/catroid/stage/SpeechRecognitionHolderFactory;->instance:Lorg/catrobat/catroid/stage/SpeechRecognitionHolderInterface;

    .line 58
    goto :goto_0

    .line 60
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/stage/SpeechRecognitionHolderFactory;->mobileServiceAvailability:Lorg/catrobat/catroid/utils/MobileServiceAvailability;

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/utils/MobileServiceAvailability;->isHmsAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lorg/catrobat/catroid/stage/SpeechRecognitionHolderFactory;->hmsSpeechRecognitionHolder:Lorg/catrobat/catroid/stage/SpeechRecognitionHolderInterface;

    iput-object v0, p0, Lorg/catrobat/catroid/stage/SpeechRecognitionHolderFactory;->instance:Lorg/catrobat/catroid/stage/SpeechRecognitionHolderInterface;

    .line 62
    goto :goto_0

    .line 64
    :cond_1
    const/4 v1, 0x0

    .line 55
    :goto_0
    return v1
.end method
