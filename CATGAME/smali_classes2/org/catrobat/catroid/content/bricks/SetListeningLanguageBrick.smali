.class public final Lorg/catrobat/catroid/content/bricks/SetListeningLanguageBrick;
.super Lorg/catrobat/catroid/content/bricks/BrickBaseType;
.source "SetListeningLanguageBrick.kt"

# interfaces
.implements Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/catrobat/catroid/content/bricks/BrickBaseType;",
        "Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener<",
        "Lorg/catrobat/catroid/content/bricks/brickspinner/LanguageObject;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSetListeningLanguageBrick.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SetListeningLanguageBrick.kt\norg/catrobat/catroid/content/bricks/SetListeningLanguageBrick\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,98:1\n1819#2,2:99\n*E\n*S KotlinDebug\n*F\n+ 1 SetListeningLanguageBrick.kt\norg/catrobat/catroid/content/bricks/SetListeningLanguageBrick\n*L\n59#1,2:99\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u00002\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00030\u0002B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0010\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0012\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016J\u0017\u0010\u0017\u001a\u00020\t2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0016H\u0016\u00a2\u0006\u0002\u0010\u0019J!\u0010\u001a\u001a\u00020\t2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00162\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0003H\u0016\u00a2\u0006\u0002\u0010\u001cJ\u0017\u0010\u001d\u001a\u00020\t2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0016H\u0016\u00a2\u0006\u0002\u0010\u0019J!\u0010\u001e\u001a\u00020\t2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00162\u0008\u0010\u001f\u001a\u0004\u0018\u00010 H\u0016\u00a2\u0006\u0002\u0010!R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0007X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lorg/catrobat/catroid/content/bricks/SetListeningLanguageBrick;",
        "Lorg/catrobat/catroid/content/bricks/BrickBaseType;",
        "Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener;",
        "Lorg/catrobat/catroid/content/bricks/brickspinner/LanguageObject;",
        "()V",
        "languageObject",
        "spinner",
        "Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;",
        "addActionToSequence",
        "",
        "sprite",
        "Lorg/catrobat/catroid/content/Sprite;",
        "sequence",
        "Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;",
        "addRequiredResources",
        "requiredResourcesSet",
        "Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;",
        "getView",
        "Landroid/view/View;",
        "context",
        "Landroid/content/Context;",
        "getViewResource",
        "",
        "onEditOptionSelected",
        "spinnerId",
        "(Ljava/lang/Integer;)V",
        "onItemSelected",
        "item",
        "(Ljava/lang/Integer;Lorg/catrobat/catroid/content/bricks/brickspinner/LanguageObject;)V",
        "onNewOptionSelected",
        "onStringOptionSelected",
        "string",
        "",
        "(Ljava/lang/Integer;Ljava/lang/String;)V",
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
.field private languageObject:Lorg/catrobat/catroid/content/bricks/brickspinner/LanguageObject;

.field private transient spinner:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner<",
            "Lorg/catrobat/catroid/content/bricks/brickspinner/LanguageObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lorg/catrobat/catroid/content/bricks/BrickBaseType;-><init>()V

    return-void
.end method


# virtual methods
.method public addActionToSequence(Lorg/catrobat/catroid/content/Sprite;Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;)V
    .locals 2
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .param p2, "sequence"    # Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;

    const-string v0, "sprite"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sequence"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    nop

    .line 47
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getActionFactory()Lorg/catrobat/catroid/content/ActionFactory;

    move-result-object v0

    .line 48
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/SetListeningLanguageBrick;->languageObject:Lorg/catrobat/catroid/content/bricks/brickspinner/LanguageObject;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/bricks/brickspinner/LanguageObject;->getLanguageTag()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 47
    :goto_0
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/ActionFactory;->createSetListeningLanguageAction(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/Action;

    move-result-object v0

    .line 46
    invoke-virtual {p2, v0}, Lorg/catrobat/catroid/content/actions/ScriptSequenceAction;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 51
    return-void
.end method

.method public addRequiredResources(Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;)V
    .locals 1
    .param p1, "requiredResourcesSet"    # Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;

    const-string v0, "requiredResourcesSet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    const/16 v0, 0x17

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->add(Ljava/lang/Integer;)Z

    .line 95
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/BrickBaseType;->addRequiredResources(Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;)V

    .line 96
    return-void
.end method

.method public getView(Landroid/content/Context;)Landroid/view/View;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .line 54
    invoke-super {p0, p1}, Lorg/catrobat/catroid/content/bricks/BrickBaseType;->getView(Landroid/content/Context;)Landroid/view/View;

    .line 56
    nop

    .line 57
    nop

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 57
    move-object v1, v0

    .local v1, "$this$apply":Ljava/util/List;
    const/4 v2, 0x0

    .line 58
    .local v2, "$i$a$-apply-SetListeningLanguageBrick$getView$languageObjectList$1":I
    nop

    .line 59
    nop

    .line 58
    sget-object v3, Lorg/catrobat/catroid/utils/Utils;->SPEECH_RECOGNITION_SUPPORTED_LANGUAGES:Ljava/util/ArrayList;

    const-string v4, "SPEECH_RECOGNITION_SUPPORTED_LANGUAGES"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Iterable;

    .line 59
    nop

    .local v3, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 99
    .local v4, "$i$f$forEach":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    .local v7, "languageTag":Ljava/lang/String;
    const/4 v8, 0x0

    .line 60
    .local v8, "$i$a$-forEach-SetListeningLanguageBrick$getView$languageObjectList$1$1":I
    invoke-static {v7}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v9

    .line 61
    .local v9, "locale":Ljava/util/Locale;
    invoke-virtual {v9, v9}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    .line 62
    .local v10, "languageName":Ljava/lang/String;
    new-instance v11, Lorg/catrobat/catroid/content/bricks/brickspinner/LanguageObject;

    const-string v12, "languageName"

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "languageTag"

    invoke-static {v7, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v11, v10, v7}, Lorg/catrobat/catroid/content/bricks/brickspinner/LanguageObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    .end local v9    # "locale":Ljava/util/Locale;
    .end local v10    # "languageName":Ljava/lang/String;
    nop

    .end local v6    # "element$iv":Ljava/lang/Object;
    .end local v7    # "languageTag":Ljava/lang/String;
    .end local v8    # "$i$a$-forEach-SetListeningLanguageBrick$getView$languageObjectList$1$1":I
    goto :goto_0

    .line 100
    :cond_0
    nop

    .line 64
    .end local v3    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$forEach":I
    nop

    .line 57
    .end local v1    # "$this$apply":Ljava/util/List;
    .end local v2    # "$i$a$-apply-SetListeningLanguageBrick$getView$languageObjectList$1":I
    nop

    .line 56
    nop

    .line 66
    .local v0, "languageObjectList":Ljava/util/List;
    nop

    .line 67
    new-instance v1, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

    .line 68
    const v2, 0x7f0a0211

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 69
    iget-object v3, p0, Lorg/catrobat/catroid/content/bricks/SetListeningLanguageBrick;->view:Landroid/view/View;

    .line 70
    nop

    .line 67
    invoke-direct {v1, v2, v3, v0}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;-><init>(Ljava/lang/Integer;Landroid/view/View;Ljava/util/List;)V

    .line 66
    nop

    .local v1, "$this$with":Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;
    const/4 v2, 0x0

    .line 73
    .local v2, "$i$a$-with-SetListeningLanguageBrick$getView$1":I
    iput-object v1, p0, Lorg/catrobat/catroid/content/bricks/SetListeningLanguageBrick;->spinner:Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;

    .line 74
    move-object v3, p0

    check-cast v3, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener;

    invoke-virtual {v1, v3}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->setOnItemSelectedListener(Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner$OnItemSelectedListener;)V

    .line 75
    iget-object v3, p0, Lorg/catrobat/catroid/content/bricks/SetListeningLanguageBrick;->languageObject:Lorg/catrobat/catroid/content/bricks/brickspinner/LanguageObject;

    check-cast v3, Lorg/catrobat/catroid/common/Nameable;

    invoke-virtual {v1, v3}, Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;->setSelection(Lorg/catrobat/catroid/common/Nameable;)V

    .line 76
    nop

    .line 66
    .end local v1    # "$this$with":Lorg/catrobat/catroid/content/bricks/brickspinner/BrickSpinner;
    .end local v2    # "$i$a$-with-SetListeningLanguageBrick$getView$1":I
    nop

    .line 78
    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/SetListeningLanguageBrick;->view:Landroid/view/View;

    const-string v2, "view"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public getViewResource()I
    .locals 1

    .line 81
    const v0, 0x7f0d00d5

    return v0
.end method

.method public onEditOptionSelected(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "spinnerId"    # Ljava/lang/Integer;

    .line 85
    return-void
.end method

.method public bridge synthetic onItemSelected(Ljava/lang/Integer;Ljava/lang/Object;)V
    .locals 0

    .line 37
    check-cast p2, Lorg/catrobat/catroid/content/bricks/brickspinner/LanguageObject;

    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/content/bricks/SetListeningLanguageBrick;->onItemSelected(Ljava/lang/Integer;Lorg/catrobat/catroid/content/bricks/brickspinner/LanguageObject;)V

    return-void
.end method

.method public onItemSelected(Ljava/lang/Integer;Lorg/catrobat/catroid/content/bricks/brickspinner/LanguageObject;)V
    .locals 0
    .param p1, "spinnerId"    # Ljava/lang/Integer;
    .param p2, "item"    # Lorg/catrobat/catroid/content/bricks/brickspinner/LanguageObject;

    .line 90
    iput-object p2, p0, Lorg/catrobat/catroid/content/bricks/SetListeningLanguageBrick;->languageObject:Lorg/catrobat/catroid/content/bricks/brickspinner/LanguageObject;

    .line 91
    return-void
.end method

.method public onNewOptionSelected(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "spinnerId"    # Ljava/lang/Integer;

    .line 83
    return-void
.end method

.method public onStringOptionSelected(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0
    .param p1, "spinnerId"    # Ljava/lang/Integer;
    .param p2, "string"    # Ljava/lang/String;

    .line 87
    return-void
.end method
