.class public final synthetic Lorg/catrobat/catroid/formulaeditor/-$$Lambda$FormulaElement$CPjxhmdiHtDNiGlbEGTJxfv4we0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/catrobat/catroid/formulaeditor/function/TernaryFunctionAction;


# instance fields
.field public final synthetic f$0:Lorg/catrobat/catroid/formulaeditor/FormulaElement;


# direct methods
.method public synthetic constructor <init>(Lorg/catrobat/catroid/formulaeditor/FormulaElement;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/formulaeditor/-$$Lambda$FormulaElement$CPjxhmdiHtDNiGlbEGTJxfv4we0;->f$0:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    return-void
.end method


# virtual methods
.method public final execute(DDD)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/-$$Lambda$FormulaElement$CPjxhmdiHtDNiGlbEGTJxfv4we0;->f$0:Lorg/catrobat/catroid/formulaeditor/FormulaElement;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-static/range {v0 .. v6}, Lorg/catrobat/catroid/formulaeditor/FormulaElement;->lambda$CPjxhmdiHtDNiGlbEGTJxfv4we0(Lorg/catrobat/catroid/formulaeditor/FormulaElement;DDD)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method
