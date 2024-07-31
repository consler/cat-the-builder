.class public final Lorg/catrobat/catroid/content/actions/SetListeningLanguageAction;
.super Lcom/badlogic/gdx/scenes/scene2d/Action;
.source "SetListeningLanguageAction.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0008\u0010\u000e\u001a\u00020\u000fH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\n\u00a8\u0006\u0010"
    }
    d2 = {
        "Lorg/catrobat/catroid/content/actions/SetListeningLanguageAction;",
        "Lcom/badlogic/gdx/scenes/scene2d/Action;",
        "()V",
        "languageChanged",
        "",
        "listeningLanguageTag",
        "",
        "getListeningLanguageTag",
        "()Ljava/lang/String;",
        "setListeningLanguageTag",
        "(Ljava/lang/String;)V",
        "act",
        "delta",
        "",
        "changeLanguage",
        "",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private languageChanged:Z

.field public listeningLanguageTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;-><init>()V

    return-void
.end method

.method private final changeLanguage()V
    .locals 2

    .line 44
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/SetListeningLanguageAction;->listeningLanguageTag:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v1, "listeningLanguageTag"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-static {v0}, Lorg/catrobat/catroid/formulaeditor/SensorHandler;->setListeningLanguageSensor(Ljava/lang/String;)V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/catroid/content/actions/SetListeningLanguageAction;->languageChanged:Z

    .line 47
    return-void
.end method


# virtual methods
.method public act(F)Z
    .locals 1
    .param p1, "delta"    # F

    .line 37
    iget-boolean v0, p0, Lorg/catrobat/catroid/content/actions/SetListeningLanguageAction;->languageChanged:Z

    if-nez v0, :cond_0

    .line 38
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/SetListeningLanguageAction;->changeLanguage()V

    .line 40
    :cond_0
    iget-boolean v0, p0, Lorg/catrobat/catroid/content/actions/SetListeningLanguageAction;->languageChanged:Z

    return v0
.end method

.method public final getListeningLanguageTag()Ljava/lang/String;
    .locals 2

    .line 34
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/SetListeningLanguageAction;->listeningLanguageTag:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v1, "listeningLanguageTag"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final setListeningLanguageTag(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/SetListeningLanguageAction;->listeningLanguageTag:Ljava/lang/String;

    return-void
.end method
