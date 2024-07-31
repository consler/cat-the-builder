.class Lorg/catrobat/catroid/formulaeditor/InternFormulaParser$InternFormulaParserException;
.super Ljava/lang/Exception;
.source "InternFormulaParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternFormulaParserException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;Ljava/lang/String;)V
    .locals 0
    .param p2, "errorMessage"    # Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lorg/catrobat/catroid/formulaeditor/InternFormulaParser$InternFormulaParserException;->this$0:Lorg/catrobat/catroid/formulaeditor/InternFormulaParser;

    .line 40
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 41
    return-void
.end method
