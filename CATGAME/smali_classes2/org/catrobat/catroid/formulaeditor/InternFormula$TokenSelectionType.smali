.class public final enum Lorg/catrobat/catroid/formulaeditor/InternFormula$TokenSelectionType;
.super Ljava/lang/Enum;
.source "InternFormula.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/formulaeditor/InternFormula;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TokenSelectionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/catrobat/catroid/formulaeditor/InternFormula$TokenSelectionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/catrobat/catroid/formulaeditor/InternFormula$TokenSelectionType;

.field public static final enum PARSER_ERROR_SELECTION:Lorg/catrobat/catroid/formulaeditor/InternFormula$TokenSelectionType;

.field public static final enum USER_SELECTION:Lorg/catrobat/catroid/formulaeditor/InternFormula$TokenSelectionType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 48
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/InternFormula$TokenSelectionType;

    const-string v1, "USER_SELECTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/catrobat/catroid/formulaeditor/InternFormula$TokenSelectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/InternFormula$TokenSelectionType;->USER_SELECTION:Lorg/catrobat/catroid/formulaeditor/InternFormula$TokenSelectionType;

    new-instance v0, Lorg/catrobat/catroid/formulaeditor/InternFormula$TokenSelectionType;

    const-string v1, "PARSER_ERROR_SELECTION"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/catrobat/catroid/formulaeditor/InternFormula$TokenSelectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/InternFormula$TokenSelectionType;->PARSER_ERROR_SELECTION:Lorg/catrobat/catroid/formulaeditor/InternFormula$TokenSelectionType;

    .line 47
    const/4 v1, 0x2

    new-array v1, v1, [Lorg/catrobat/catroid/formulaeditor/InternFormula$TokenSelectionType;

    sget-object v4, Lorg/catrobat/catroid/formulaeditor/InternFormula$TokenSelectionType;->USER_SELECTION:Lorg/catrobat/catroid/formulaeditor/InternFormula$TokenSelectionType;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lorg/catrobat/catroid/formulaeditor/InternFormula$TokenSelectionType;->$VALUES:[Lorg/catrobat/catroid/formulaeditor/InternFormula$TokenSelectionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/formulaeditor/InternFormula$TokenSelectionType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 47
    const-class v0, Lorg/catrobat/catroid/formulaeditor/InternFormula$TokenSelectionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/formulaeditor/InternFormula$TokenSelectionType;

    return-object v0
.end method

.method public static values()[Lorg/catrobat/catroid/formulaeditor/InternFormula$TokenSelectionType;
    .locals 1

    .line 47
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternFormula$TokenSelectionType;->$VALUES:[Lorg/catrobat/catroid/formulaeditor/InternFormula$TokenSelectionType;

    invoke-virtual {v0}, [Lorg/catrobat/catroid/formulaeditor/InternFormula$TokenSelectionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/catroid/formulaeditor/InternFormula$TokenSelectionType;

    return-object v0
.end method
