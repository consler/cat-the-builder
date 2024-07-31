.class public final Lorg/catrobat/catroid/stage/HuaweiTextToSpeechHolder;
.super Ljava/lang/Object;
.source "HuaweiTextToSpeechHolder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/stage/HuaweiTextToSpeechHolder$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0016\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\u000c\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u0006\u00a8\u0006\u000f"
    }
    d2 = {
        "Lorg/catrobat/catroid/stage/HuaweiTextToSpeechHolder;",
        "",
        "()V",
        "downloadModel",
        "",
        "person",
        "",
        "initTextToSpeech",
        "stageActivity",
        "Lorg/catrobat/catroid/stage/StageActivity;",
        "stageResourceHolder",
        "Lorg/catrobat/catroid/stage/StageResourceHolder;",
        "textToSpeech",
        "text",
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
.field public static final Companion:Lorg/catrobat/catroid/stage/HuaweiTextToSpeechHolder$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/catroid/stage/HuaweiTextToSpeechHolder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/stage/HuaweiTextToSpeechHolder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/catroid/stage/HuaweiTextToSpeechHolder;->Companion:Lorg/catrobat/catroid/stage/HuaweiTextToSpeechHolder$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final downloadModel(Ljava/lang/String;)V
    .locals 0
    .param p1, "person"    # Ljava/lang/String;

    .line 98
    return-void
.end method


# virtual methods
.method public final initTextToSpeech(Lorg/catrobat/catroid/stage/StageActivity;Lorg/catrobat/catroid/stage/StageResourceHolder;)V
    .locals 1
    .param p1, "stageActivity"    # Lorg/catrobat/catroid/stage/StageActivity;
    .param p2, "stageResourceHolder"    # Lorg/catrobat/catroid/stage/StageResourceHolder;

    const-string v0, "stageActivity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stageResourceHolder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public final textToSpeech(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    return-void
.end method
