.class final Lorg/catrobat/catroid/stage/SpeechRecognitionHolder$showDialog$2;
.super Ljava/lang/Object;
.source "SpeechRecognitionHolder.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;->showDialog(Lorg/catrobat/catroid/stage/StageActivity;Lorg/catrobat/catroid/stage/StageResourceHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/content/DialogInterface;",
        "kotlin.jvm.PlatformType",
        "<anonymous parameter 1>",
        "",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic $stageResourceHolder:Lorg/catrobat/catroid/stage/StageResourceHolder;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/stage/StageResourceHolder;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/catroid/stage/SpeechRecognitionHolder$showDialog$2;->$stageResourceHolder:Lorg/catrobat/catroid/stage/StageResourceHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "$noName_0"    # Landroid/content/DialogInterface;
    .param p2, "$noName_1"    # I

    .line 171
    iget-object v0, p0, Lorg/catrobat/catroid/stage/SpeechRecognitionHolder$showDialog$2;->$stageResourceHolder:Lorg/catrobat/catroid/stage/StageResourceHolder;

    invoke-virtual {v0}, Lorg/catrobat/catroid/stage/StageResourceHolder;->endStageActivity()V

    .line 172
    return-void
.end method
