.class public final synthetic Lorg/catrobat/catroid/ui/fragment/-$$Lambda$GZOvFV0Fyj4_E50AhcYN8XqlH0U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/catrobat/paintroid/colorpicker/OnColorPickedListener;


# instance fields
.field public final synthetic f$0:Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;


# direct methods
.method public synthetic constructor <init>(Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/ui/fragment/-$$Lambda$GZOvFV0Fyj4_E50AhcYN8XqlH0U;->f$0:Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;

    return-void
.end method


# virtual methods
.method public final colorChanged(I)V
    .locals 1

    iget-object v0, p0, Lorg/catrobat/catroid/ui/fragment/-$$Lambda$GZOvFV0Fyj4_E50AhcYN8XqlH0U;->f$0:Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;

    invoke-interface {v0, p1}, Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;->setValue(I)V

    return-void
.end method
