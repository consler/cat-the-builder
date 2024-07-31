.class public final synthetic Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$TouchFunctionProvider$5loOiyPPMWjxYIFTMBgfxn3WDus;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/catrobat/catroid/formulaeditor/function/UnaryFunctionAction;


# instance fields
.field public final synthetic f$0:Lorg/catrobat/catroid/formulaeditor/function/TouchFunctionProvider;


# direct methods
.method public synthetic constructor <init>(Lorg/catrobat/catroid/formulaeditor/function/TouchFunctionProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$TouchFunctionProvider$5loOiyPPMWjxYIFTMBgfxn3WDus;->f$0:Lorg/catrobat/catroid/formulaeditor/function/TouchFunctionProvider;

    return-void
.end method


# virtual methods
.method public final execute(D)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$TouchFunctionProvider$5loOiyPPMWjxYIFTMBgfxn3WDus;->f$0:Lorg/catrobat/catroid/formulaeditor/function/TouchFunctionProvider;

    invoke-static {v0, p1, p2}, Lorg/catrobat/catroid/formulaeditor/function/TouchFunctionProvider;->lambda$5loOiyPPMWjxYIFTMBgfxn3WDus(Lorg/catrobat/catroid/formulaeditor/function/TouchFunctionProvider;D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method
