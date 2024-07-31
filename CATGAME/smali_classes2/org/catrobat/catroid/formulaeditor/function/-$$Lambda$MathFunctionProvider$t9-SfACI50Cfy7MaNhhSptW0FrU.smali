.class public final synthetic Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$MathFunctionProvider$t9-SfACI50Cfy7MaNhhSptW0FrU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/catrobat/catroid/formulaeditor/function/BinaryFunctionAction;


# instance fields
.field public final synthetic f$0:Lorg/catrobat/catroid/formulaeditor/function/MathFunctionProvider;


# direct methods
.method public synthetic constructor <init>(Lorg/catrobat/catroid/formulaeditor/function/MathFunctionProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$MathFunctionProvider$t9-SfACI50Cfy7MaNhhSptW0FrU;->f$0:Lorg/catrobat/catroid/formulaeditor/function/MathFunctionProvider;

    return-void
.end method


# virtual methods
.method public final execute(DD)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$MathFunctionProvider$t9-SfACI50Cfy7MaNhhSptW0FrU;->f$0:Lorg/catrobat/catroid/formulaeditor/function/MathFunctionProvider;

    invoke-static {v0, p1, p2, p3, p4}, Lorg/catrobat/catroid/formulaeditor/function/MathFunctionProvider;->lambda$t9-SfACI50Cfy7MaNhhSptW0FrU(Lorg/catrobat/catroid/formulaeditor/function/MathFunctionProvider;DD)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method
