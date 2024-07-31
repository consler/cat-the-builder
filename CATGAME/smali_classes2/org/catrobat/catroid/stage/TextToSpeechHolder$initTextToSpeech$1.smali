.class final Lorg/catrobat/catroid/stage/TextToSpeechHolder$initTextToSpeech$1;
.super Ljava/lang/Object;
.source "TextToSpeechHolder.kt"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/stage/TextToSpeechHolder;->initTextToSpeech(Lorg/catrobat/catroid/stage/StageActivity;Lorg/catrobat/catroid/stage/StageResourceHolder;)V
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "status",
        "",
        "onInit"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic $stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

.field final synthetic $stageResourceHolder:Lorg/catrobat/catroid/stage/StageResourceHolder;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/stage/StageResourceHolder;Lorg/catrobat/catroid/stage/StageActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/catroid/stage/TextToSpeechHolder$initTextToSpeech$1;->$stageResourceHolder:Lorg/catrobat/catroid/stage/StageResourceHolder;

    iput-object p2, p0, Lorg/catrobat/catroid/stage/TextToSpeechHolder$initTextToSpeech$1;->$stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInit(I)V
    .locals 4
    .param p1, "status"    # I

    .line 42
    if-nez p1, :cond_1

    .line 43
    new-instance v0, Lorg/catrobat/catroid/stage/UtteranceProgressListenerContainer;

    invoke-direct {v0}, Lorg/catrobat/catroid/stage/UtteranceProgressListenerContainer;-><init>()V

    invoke-static {v0}, Lorg/catrobat/catroid/stage/TextToSpeechHolder;->access$setUtteranceProgressListenerContainer$cp(Lorg/catrobat/catroid/stage/UtteranceProgressListenerContainer;)V

    .line 44
    invoke-static {}, Lorg/catrobat/catroid/stage/TextToSpeechHolder;->access$getTextToSpeech$cp()Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/catrobat/catroid/stage/TextToSpeechHolder;->access$getUtteranceProgressListenerContainer$cp()Lorg/catrobat/catroid/stage/UtteranceProgressListenerContainer;

    move-result-object v1

    check-cast v1, Landroid/speech/tts/UtteranceProgressListener;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    .line 45
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/stage/TextToSpeechHolder$initTextToSpeech$1;->$stageResourceHolder:Lorg/catrobat/catroid/stage/StageResourceHolder;

    invoke-virtual {v0}, Lorg/catrobat/catroid/stage/StageResourceHolder;->resourceInitialized()V

    goto :goto_0

    .line 47
    :cond_1
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lorg/catrobat/catroid/stage/TextToSpeechHolder$initTextToSpeech$1;->$stageActivity:Lorg/catrobat/catroid/stage/StageActivity;

    check-cast v2, Landroid/content/Context;

    const v3, 0x7f13023d

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 48
    .local v0, "builder":Landroidx/appcompat/app/AlertDialog$Builder;
    nop

    .line 56
    nop

    .line 48
    nop

    .line 50
    nop

    .line 48
    nop

    .line 49
    nop

    .line 48
    const v1, 0x7f1206df

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 49
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 50
    const v2, 0x7f1207de

    new-instance v3, Lorg/catrobat/catroid/stage/TextToSpeechHolder$initTextToSpeech$1$1;

    invoke-direct {v3, p0}, Lorg/catrobat/catroid/stage/TextToSpeechHolder$initTextToSpeech$1$1;-><init>(Lorg/catrobat/catroid/stage/TextToSpeechHolder$initTextToSpeech$1;)V

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 56
    const v2, 0x7f1205b7

    new-instance v3, Lorg/catrobat/catroid/stage/TextToSpeechHolder$initTextToSpeech$1$2;

    invoke-direct {v3, p0}, Lorg/catrobat/catroid/stage/TextToSpeechHolder$initTextToSpeech$1$2;-><init>(Lorg/catrobat/catroid/stage/TextToSpeechHolder$initTextToSpeech$1;)V

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 59
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    const-string v2, "builder.create()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .local v1, "alert":Landroidx/appcompat/app/AlertDialog;
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 61
    .end local v0    # "builder":Landroidx/appcompat/app/AlertDialog$Builder;
    .end local v1    # "alert":Landroidx/appcompat/app/AlertDialog;
    :goto_0
    nop

    .line 62
    return-void
.end method
