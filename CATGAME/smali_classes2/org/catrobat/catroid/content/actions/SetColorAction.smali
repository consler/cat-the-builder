.class public Lorg/catrobat/catroid/content/actions/SetColorAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "SetColorAction.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private color:Lorg/catrobat/catroid/formulaeditor/Formula;

.field private scope:Lorg/catrobat/catroid/content/Scope;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Lorg/catrobat/catroid/content/actions/SetColorAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/content/actions/SetColorAction;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    return-void
.end method


# virtual methods
.method public setColor(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "color"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 51
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/SetColorAction;->color:Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 52
    return-void
.end method

.method public setScope(Lorg/catrobat/catroid/content/Scope;)V
    .locals 0
    .param p1, "scope"    # Lorg/catrobat/catroid/content/Scope;

    .line 55
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/SetColorAction;->scope:Lorg/catrobat/catroid/content/Scope;

    .line 56
    return-void
.end method

.method protected update(F)V
    .locals 3
    .param p1, "delta"    # F

    .line 43
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/SetColorAction;->color:Lorg/catrobat/catroid/formulaeditor/Formula;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/SetColorAction;->color:Lorg/catrobat/catroid/formulaeditor/Formula;

    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/SetColorAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretFloat(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 44
    .local v0, "eightBitColor":F
    :goto_0
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/SetColorAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Scope;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v1

    iget-object v1, v1, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/content/Look;->setColorInUserInterfaceDimensionUnit(F)V
    :try_end_0
    .catch Lorg/catrobat/catroid/formulaeditor/InterpretationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .end local v0    # "eightBitColor":F
    goto :goto_1

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    sget-object v1, Lorg/catrobat/catroid/content/actions/SetColorAction;->TAG:Ljava/lang/String;

    const-string v2, "Formula interpretation for this specific Brick failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    .end local v0    # "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    :goto_1
    return-void
.end method
