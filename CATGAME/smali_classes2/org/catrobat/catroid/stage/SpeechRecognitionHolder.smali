.class public final Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;
.super Ljava/lang/Object;
.source "SpeechRecognitionHolder.kt"

# interfaces
.implements Lorg/catrobat/catroid/stage/SpeechRecognitionHolderInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/stage/SpeechRecognitionHolder$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\u0008\u0010\u0011\u001a\u00020\u0010H\u0016J\u0018\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0010\u0010\u0017\u001a\u00020\u00102\u0006\u0010\u0018\u001a\u00020\u0014H\u0002J\u0018\u0010\u0019\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u0008\u0010\u001a\u001a\u00020\u0010H\u0016R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\t\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;",
        "Lorg/catrobat/catroid/stage/SpeechRecognitionHolderInterface;",
        "()V",
        "callback",
        "Lorg/catrobat/catroid/stage/OnSpeechRecognitionResultCallback;",
        "getCallback",
        "()Lorg/catrobat/catroid/stage/OnSpeechRecognitionResultCallback;",
        "setCallback",
        "(Lorg/catrobat/catroid/stage/OnSpeechRecognitionResultCallback;)V",
        "listener",
        "Landroid/speech/RecognitionListener;",
        "speechIntent",
        "Landroid/content/Intent;",
        "speechRecognizer",
        "Landroid/speech/SpeechRecognizer;",
        "destroy",
        "",
        "forceSetLanguage",
        "initSpeechRecognition",
        "stageActivity",
        "Lorg/catrobat/catroid/stage/StageActivity;",
        "stageResourceHolder",
        "Lorg/catrobat/catroid/stage/StageResourceHolder;",
        "openSpeechRecognitionSettings",
        "activity",
        "showDialog",
        "startListening",
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
.field public static final Companion:Lorg/catrobat/catroid/stage/SpeechRecognitionHolder$Companion;

.field private static final FIVE_SECONDS:I = 0x1388

.field private static final ONE_SECOND:I = 0x3e8

.field private static final QUICK_SEARCH_BOX_PKG:Ljava/lang/String; = "com.google.android.googlequicksearchbox"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private callback:Lorg/catrobat/catroid/stage/OnSpeechRecognitionResultCallback;

.field private listener:Landroid/speech/RecognitionListener;

.field private speechIntent:Landroid/content/Intent;

.field private speechRecognizer:Landroid/speech/SpeechRecognizer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/catroid/stage/SpeechRecognitionHolder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/stage/SpeechRecognitionHolder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;->Companion:Lorg/catrobat/catroid/stage/SpeechRecognitionHolder$Companion;

    .line 54
    const-class v0, Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getListener$p(Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;)Landroid/speech/RecognitionListener;
    .locals 2
    .param p0, "$this"    # Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;

    .line 46
    iget-object v0, p0, Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;->listener:Landroid/speech/RecognitionListener;

    if-nez v0, :cond_0

    const-string v1, "listener"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static final synthetic access$getSpeechIntent$p(Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;)Landroid/content/Intent;
    .locals 2
    .param p0, "$this"    # Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;

    .line 46
    iget-object v0, p0, Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;->speechIntent:Landroid/content/Intent;

    if-nez v0, :cond_0

    const-string v1, "speechIntent"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static final synthetic access$getSpeechRecognizer$p(Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;)Landroid/speech/SpeechRecognizer;
    .locals 2
    .param p0, "$this"    # Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;

    .line 46
    iget-object v0, p0, Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;->speechRecognizer:Landroid/speech/SpeechRecognizer;

    if-nez v0, :cond_0

    const-string v1, "speechRecognizer"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 46
    sget-object v0, Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$openSpeechRecognitionSettings(Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;Lorg/catrobat/catroid/stage/StageActivity;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;
    .param p1, "activity"    # Lorg/catrobat/catroid/stage/StageActivity;

    .line 46
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;->openSpeechRecognitionSettings(Lorg/catrobat/catroid/stage/StageActivity;)V

    return-void
.end method

.method public static final synthetic access$setListener$p(Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;Landroid/speech/RecognitionListener;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;
    .param p1, "<set-?>"    # Landroid/speech/RecognitionListener;

    .line 46
    iput-object p1, p0, Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;->listener:Landroid/speech/RecognitionListener;

    return-void
.end method

.method public static final synthetic access$setSpeechIntent$p(Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;Landroid/content/Intent;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;
    .param p1, "<set-?>"    # Landroid/content/Intent;

    .line 46
    iput-object p1, p0, Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;->speechIntent:Landroid/content/Intent;

    return-void
.end method

.method public static final synthetic access$setSpeechRecognizer$p(Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;Landroid/speech/SpeechRecognizer;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;
    .param p1, "<set-?>"    # Landroid/speech/SpeechRecognizer;

    .line 46
    iput-object p1, p0, Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;->speechRecognizer:Landroid/speech/SpeechRecognizer;

    return-void
.end method

.method public static final synthetic access$showDialog(Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;Lorg/catrobat/catroid/stage/StageActivity;Lorg/catrobat/catroid/stage/StageResourceHolder;)V
    .locals 0
    .param p0, "$this"    # Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;
    .param p1, "stageActivity"    # Lorg/catrobat/catroid/stage/StageActivity;
    .param p2, "stageResourceHolder"    # Lorg/catrobat/catroid/stage/StageResourceHolder;

    .line 46
    invoke-direct {p0, p1, p2}, Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;->showDialog(Lorg/catrobat/catroid/stage/StageActivity;Lorg/catrobat/catroid/stage/StageResourceHolder;)V

    return-void
.end method

.method private final openSpeechRecognitionSettings(Lorg/catrobat/catroid/stage/StageActivity;)V
    .locals 9
    .param p1, "activity"    # Lorg/catrobat/catroid/stage/StageActivity;

    .line 178
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 179
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 180
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/content/ComponentName;

    .line 181
    new-instance v2, Landroid/content/ComponentName;

    .line 182
    nop

    .line 183
    nop

    .line 181
    const-string v3, "com.google.android.googlequicksearchbox"

    const-string v4, "com.google.android.apps.gsa.settingsui.VoiceSearchPreferences"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    aput-object v2, v1, v4

    .line 185
    new-instance v2, Landroid/content/ComponentName;

    .line 186
    nop

    .line 187
    nop

    .line 185
    const-string v5, "com.google.android.voicesearch"

    const-string v6, "com.google.android.voicesearch.VoiceSearchPreferences"

    invoke-direct {v2, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    aput-object v2, v1, v5

    .line 189
    new-instance v2, Landroid/content/ComponentName;

    .line 190
    nop

    .line 191
    nop

    .line 189
    invoke-direct {v2, v3, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 193
    new-instance v2, Landroid/content/ComponentName;

    .line 194
    nop

    .line 195
    nop

    .line 193
    const-string v5, "com.google.android.apps.gsa.velvet.ui.settings.VoiceSearchPreferences"

    invoke-direct {v2, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 180
    nop

    .line 198
    .local v1, "components":[Landroid/content/ComponentName;
    array-length v2, v1

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v3, v1, v4

    .line 199
    .local v3, "componentName":Landroid/content/ComponentName;
    nop

    .line 200
    :try_start_0
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 201
    invoke-virtual {p1, v0}, Lorg/catrobat/catroid/stage/StageActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    goto :goto_1

    .line 203
    :catch_0
    move-exception v5

    .line 205
    .local v5, "e":Landroid/content/ActivityNotFoundException;
    sget-object v6, Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Speech Recognition Engine isn\'t installed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    .end local v5    # "e":Landroid/content/ActivityNotFoundException;
    nop

    .line 198
    nop

    .end local v3    # "componentName":Landroid/content/ComponentName;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 208
    :cond_0
    :goto_1
    return-void
.end method

.method private final showDialog(Lorg/catrobat/catroid/stage/StageActivity;Lorg/catrobat/catroid/stage/StageResourceHolder;)V
    .locals 6
    .param p1, "stageActivity"    # Lorg/catrobat/catroid/stage/StageActivity;
    .param p2, "stageResourceHolder"    # Lorg/catrobat/catroid/stage/StageResourceHolder;

    .line 154
    nop

    .line 155
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    move-object v2, p1

    check-cast v2, Landroid/content/Context;

    const v3, 0x7f13023d

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 154
    nop

    .line 156
    .local v0, "builder":Landroidx/appcompat/app/AlertDialog$Builder;
    nop

    .line 174
    nop

    .line 156
    nop

    .line 173
    nop

    .line 156
    nop

    .line 170
    nop

    .line 156
    nop

    .line 166
    nop

    .line 156
    nop

    .line 165
    nop

    .line 156
    nop

    .line 158
    nop

    .line 156
    nop

    .line 157
    nop

    .line 156
    nop

    .line 157
    const v1, 0x7f12075b

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 159
    nop

    .line 160
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 161
    nop

    .line 162
    nop

    .line 161
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Locale.getDefault().getD\u2026Name(Locale.getDefault())"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string v5, "Locale.getDefault()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v3, :cond_0

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "(this as java.lang.String).toUpperCase(locale)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 159
    const v3, 0x7f12075c

    invoke-virtual {p1, v3, v2}, Lorg/catrobat/catroid/stage/StageActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 158
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 165
    invoke-virtual {v1, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 166
    const v2, 0x7f1207de

    new-instance v3, Lorg/catrobat/catroid/stage/SpeechRecognitionHolder$showDialog$1;

    invoke-direct {v3, p0, p2, p1}, Lorg/catrobat/catroid/stage/SpeechRecognitionHolder$showDialog$1;-><init>(Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;Lorg/catrobat/catroid/stage/StageResourceHolder;Lorg/catrobat/catroid/stage/StageActivity;)V

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 170
    const v2, 0x7f1205b7

    new-instance v3, Lorg/catrobat/catroid/stage/SpeechRecognitionHolder$showDialog$2;

    invoke-direct {v3, p2}, Lorg/catrobat/catroid/stage/SpeechRecognitionHolder$showDialog$2;-><init>(Lorg/catrobat/catroid/stage/StageResourceHolder;)V

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 173
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    .line 174
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 175
    return-void

    .line 162
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public destroy()V
    .locals 7

    .line 147
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/coroutines/MainCoroutineDispatcher;->getImmediate()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lorg/catrobat/catroid/stage/SpeechRecognitionHolder$destroy$1;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lorg/catrobat/catroid/stage/SpeechRecognitionHolder$destroy$1;-><init>(Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 151
    return-void
.end method

.method public forceSetLanguage()V
    .locals 3

    .line 61
    iget-object v0, p0, Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;->speechIntent:Landroid/content/Intent;

    if-nez v0, :cond_0

    const-string v1, "speechIntent"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 62
    :cond_0
    invoke-static {}, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->getListeningLanguageSensor()Ljava/lang/String;

    move-result-object v1

    .line 61
    const-string v2, "android.speech.extra.LANGUAGE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    return-void
.end method

.method public getCallback()Lorg/catrobat/catroid/stage/OnSpeechRecognitionResultCallback;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;->callback:Lorg/catrobat/catroid/stage/OnSpeechRecognitionResultCallback;

    return-object v0
.end method

.method public initSpeechRecognition(Lorg/catrobat/catroid/stage/StageActivity;Lorg/catrobat/catroid/stage/StageResourceHolder;)V
    .locals 5
    .param p1, "stageActivity"    # Lorg/catrobat/catroid/stage/StageActivity;
    .param p2, "stageResourceHolder"    # Lorg/catrobat/catroid/stage/StageResourceHolder;

    const-string v0, "stageActivity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stageResourceHolder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    .local v1, "$this$apply":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 72
    .local v2, "$i$a$-apply-SpeechRecognitionHolder$initSpeechRecognition$1":I
    const-string v3, "android.speech.extra.LANGUAGE_MODEL"

    const-string v4, "free_form"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    invoke-static {}, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->getListeningLanguageSensor()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.speech.extra.LANGUAGE"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    const-string v3, "android.speech.extra.ONLY_RETURN_LANGUAGE_PREFERENCE"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 75
    invoke-virtual {p1}, Lorg/catrobat/catroid/stage/StageActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "calling_package"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    const-string v3, "android.speech.extras.SPEECH_INPUT_POSSIBLY_COMPLETE_SILENCE_LENGTH_MILLIS"

    const/16 v4, 0x3e8

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 77
    const-string v3, "android.speech.extras.SPEECH_INPUT_MINIMUM_LENGTH_MILLIS"

    const/16 v4, 0x1388

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 78
    nop

    .end local v1    # "$this$apply":Landroid/content/Intent;
    .end local v2    # "$i$a$-apply-SpeechRecognitionHolder$initSpeechRecognition$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 71
    iput-object v0, p0, Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;->speechIntent:Landroid/content/Intent;

    .line 80
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;

    move-result-object v0

    const-string v1, "SpeechRecognizer.createS\u2026Recognizer(stageActivity)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;->speechRecognizer:Landroid/speech/SpeechRecognizer;

    .line 82
    new-instance v0, Lorg/catrobat/catroid/stage/SpeechRecognitionHolder$initSpeechRecognition$2;

    invoke-direct {v0, p0, p1, p2}, Lorg/catrobat/catroid/stage/SpeechRecognitionHolder$initSpeechRecognition$2;-><init>(Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;Lorg/catrobat/catroid/stage/StageActivity;Lorg/catrobat/catroid/stage/StageResourceHolder;)V

    check-cast v0, Landroid/speech/RecognitionListener;

    iput-object v0, p0, Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;->listener:Landroid/speech/RecognitionListener;

    .line 134
    return-void
.end method

.method public setCallback(Lorg/catrobat/catroid/stage/OnSpeechRecognitionResultCallback;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/stage/OnSpeechRecognitionResultCallback;

    .line 49
    iput-object p1, p0, Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;->callback:Lorg/catrobat/catroid/stage/OnSpeechRecognitionResultCallback;

    return-void
.end method

.method public startListening()V
    .locals 7

    .line 139
    invoke-static {}, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->stopSensorListeners()V

    .line 140
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/coroutines/MainCoroutineDispatcher;->getImmediate()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lorg/catrobat/catroid/stage/SpeechRecognitionHolder$startListening$1;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lorg/catrobat/catroid/stage/SpeechRecognitionHolder$startListening$1;-><init>(Lorg/catrobat/catroid/stage/SpeechRecognitionHolder;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 144
    return-void
.end method
