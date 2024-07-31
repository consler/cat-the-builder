.class public Lorg/catrobat/catroid/content/actions/ReportAction;
.super Lcom/badlogic/gdx/scenes/scene2d/Action;
.source "ReportAction.java"


# instance fields
.field private currentScript:Lorg/catrobat/catroid/content/Script;

.field private reportFormula:Lorg/catrobat/catroid/formulaeditor/Formula;

.field private scope:Lorg/catrobat/catroid/content/Scope;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;-><init>()V

    return-void
.end method


# virtual methods
.method public act(F)Z
    .locals 2
    .param p1, "delta"    # F

    .line 61
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/ReportAction;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    instance-of v0, v0, Lorg/catrobat/catroid/content/Look;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/ReportAction;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    check-cast v0, Lorg/catrobat/catroid/content/Look;

    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/ReportAction;->currentScript:Lorg/catrobat/catroid/content/Script;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/content/Look;->stopThreadWithScript(Lorg/catrobat/catroid/content/Script;)V

    .line 64
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getReportFormula()Lorg/catrobat/catroid/formulaeditor/Formula;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/ReportAction;->reportFormula:Lorg/catrobat/catroid/formulaeditor/Formula;

    return-object v0
.end method

.method public getScope()Lorg/catrobat/catroid/content/Scope;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/ReportAction;->scope:Lorg/catrobat/catroid/content/Scope;

    return-object v0
.end method

.method public setCurrentScript(Lorg/catrobat/catroid/content/Script;)V
    .locals 0
    .param p1, "currentScript"    # Lorg/catrobat/catroid/content/Script;

    .line 44
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/ReportAction;->currentScript:Lorg/catrobat/catroid/content/Script;

    .line 45
    return-void
.end method

.method public setReportFormula(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "reportFormula"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 48
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/ReportAction;->reportFormula:Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 49
    return-void
.end method

.method public setScope(Lorg/catrobat/catroid/content/Scope;)V
    .locals 0
    .param p1, "scope"    # Lorg/catrobat/catroid/content/Scope;

    .line 40
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/ReportAction;->scope:Lorg/catrobat/catroid/content/Scope;

    .line 41
    return-void
.end method
