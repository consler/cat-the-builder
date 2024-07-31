.class public final enum Lorg/catrobat/catroid/formulaeditor/Operators;
.super Ljava/lang/Enum;
.source "Operators.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/catrobat/catroid/formulaeditor/Operators;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/catrobat/catroid/formulaeditor/Operators;

.field public static final enum DIVIDE:Lorg/catrobat/catroid/formulaeditor/Operators;

.field public static final enum EQUAL:Lorg/catrobat/catroid/formulaeditor/Operators;

.field public static final enum GREATER_OR_EQUAL:Lorg/catrobat/catroid/formulaeditor/Operators;

.field public static final enum GREATER_THAN:Lorg/catrobat/catroid/formulaeditor/Operators;

.field public static final enum LOGICAL_AND:Lorg/catrobat/catroid/formulaeditor/Operators;

.field public static final enum LOGICAL_NOT:Lorg/catrobat/catroid/formulaeditor/Operators;

.field public static final enum LOGICAL_OR:Lorg/catrobat/catroid/formulaeditor/Operators;

.field public static final enum MINUS:Lorg/catrobat/catroid/formulaeditor/Operators;

.field public static final enum MOD:Lorg/catrobat/catroid/formulaeditor/Operators;

.field public static final enum MULT:Lorg/catrobat/catroid/formulaeditor/Operators;

.field public static final enum NOT_EQUAL:Lorg/catrobat/catroid/formulaeditor/Operators;

.field public static final enum PLUS:Lorg/catrobat/catroid/formulaeditor/Operators;

.field public static final enum POW:Lorg/catrobat/catroid/formulaeditor/Operators;

.field public static final enum SMALLER_OR_EQUAL:Lorg/catrobat/catroid/formulaeditor/Operators;

.field public static final enum SMALLER_THAN:Lorg/catrobat/catroid/formulaeditor/Operators;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field public final isLogicalOperator:Z

.field private final priority:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 28
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/Operators;

    const-string v1, "LOGICAL_AND"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/catrobat/catroid/formulaeditor/Operators;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/Operators;->LOGICAL_AND:Lorg/catrobat/catroid/formulaeditor/Operators;

    new-instance v0, Lorg/catrobat/catroid/formulaeditor/Operators;

    const-string v1, "LOGICAL_OR"

    invoke-direct {v0, v1, v4, v4, v4}, Lorg/catrobat/catroid/formulaeditor/Operators;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/Operators;->LOGICAL_OR:Lorg/catrobat/catroid/formulaeditor/Operators;

    new-instance v0, Lorg/catrobat/catroid/formulaeditor/Operators;

    const-string v1, "EQUAL"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v3, v5, v4}, Lorg/catrobat/catroid/formulaeditor/Operators;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/Operators;->EQUAL:Lorg/catrobat/catroid/formulaeditor/Operators;

    new-instance v0, Lorg/catrobat/catroid/formulaeditor/Operators;

    const-string v1, "NOT_EQUAL"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6, v4}, Lorg/catrobat/catroid/formulaeditor/Operators;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/Operators;->NOT_EQUAL:Lorg/catrobat/catroid/formulaeditor/Operators;

    new-instance v0, Lorg/catrobat/catroid/formulaeditor/Operators;

    const-string v1, "SMALLER_OR_EQUAL"

    invoke-direct {v0, v1, v6, v6, v4}, Lorg/catrobat/catroid/formulaeditor/Operators;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/Operators;->SMALLER_OR_EQUAL:Lorg/catrobat/catroid/formulaeditor/Operators;

    .line 29
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/Operators;

    const-string v1, "GREATER_OR_EQUAL"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v6, v4}, Lorg/catrobat/catroid/formulaeditor/Operators;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/Operators;->GREATER_OR_EQUAL:Lorg/catrobat/catroid/formulaeditor/Operators;

    new-instance v0, Lorg/catrobat/catroid/formulaeditor/Operators;

    const-string v1, "SMALLER_THAN"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v6, v4}, Lorg/catrobat/catroid/formulaeditor/Operators;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/Operators;->SMALLER_THAN:Lorg/catrobat/catroid/formulaeditor/Operators;

    new-instance v0, Lorg/catrobat/catroid/formulaeditor/Operators;

    const-string v1, "GREATER_THAN"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v6, v4}, Lorg/catrobat/catroid/formulaeditor/Operators;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/Operators;->GREATER_THAN:Lorg/catrobat/catroid/formulaeditor/Operators;

    new-instance v0, Lorg/catrobat/catroid/formulaeditor/Operators;

    const-string v1, "PLUS"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v7}, Lorg/catrobat/catroid/formulaeditor/Operators;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/Operators;->PLUS:Lorg/catrobat/catroid/formulaeditor/Operators;

    new-instance v0, Lorg/catrobat/catroid/formulaeditor/Operators;

    const-string v1, "MINUS"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11, v7}, Lorg/catrobat/catroid/formulaeditor/Operators;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/Operators;->MINUS:Lorg/catrobat/catroid/formulaeditor/Operators;

    new-instance v0, Lorg/catrobat/catroid/formulaeditor/Operators;

    const-string v1, "MULT"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12, v8}, Lorg/catrobat/catroid/formulaeditor/Operators;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/Operators;->MULT:Lorg/catrobat/catroid/formulaeditor/Operators;

    new-instance v0, Lorg/catrobat/catroid/formulaeditor/Operators;

    const-string v1, "DIVIDE"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13, v8}, Lorg/catrobat/catroid/formulaeditor/Operators;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/Operators;->DIVIDE:Lorg/catrobat/catroid/formulaeditor/Operators;

    .line 30
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/Operators;

    const-string v1, "MOD"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14, v8}, Lorg/catrobat/catroid/formulaeditor/Operators;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/Operators;->MOD:Lorg/catrobat/catroid/formulaeditor/Operators;

    new-instance v0, Lorg/catrobat/catroid/formulaeditor/Operators;

    const-string v1, "POW"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15, v9}, Lorg/catrobat/catroid/formulaeditor/Operators;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/Operators;->POW:Lorg/catrobat/catroid/formulaeditor/Operators;

    new-instance v0, Lorg/catrobat/catroid/formulaeditor/Operators;

    const-string v1, "LOGICAL_NOT"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15, v6, v4}, Lorg/catrobat/catroid/formulaeditor/Operators;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/Operators;->LOGICAL_NOT:Lorg/catrobat/catroid/formulaeditor/Operators;

    .line 27
    const/16 v1, 0xf

    new-array v1, v1, [Lorg/catrobat/catroid/formulaeditor/Operators;

    sget-object v16, Lorg/catrobat/catroid/formulaeditor/Operators;->LOGICAL_AND:Lorg/catrobat/catroid/formulaeditor/Operators;

    aput-object v16, v1, v2

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/Operators;->LOGICAL_OR:Lorg/catrobat/catroid/formulaeditor/Operators;

    aput-object v2, v1, v4

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/Operators;->EQUAL:Lorg/catrobat/catroid/formulaeditor/Operators;

    aput-object v2, v1, v3

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/Operators;->NOT_EQUAL:Lorg/catrobat/catroid/formulaeditor/Operators;

    aput-object v2, v1, v5

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/Operators;->SMALLER_OR_EQUAL:Lorg/catrobat/catroid/formulaeditor/Operators;

    aput-object v2, v1, v6

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/Operators;->GREATER_OR_EQUAL:Lorg/catrobat/catroid/formulaeditor/Operators;

    aput-object v2, v1, v7

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/Operators;->SMALLER_THAN:Lorg/catrobat/catroid/formulaeditor/Operators;

    aput-object v2, v1, v8

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/Operators;->GREATER_THAN:Lorg/catrobat/catroid/formulaeditor/Operators;

    aput-object v2, v1, v9

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/Operators;->PLUS:Lorg/catrobat/catroid/formulaeditor/Operators;

    aput-object v2, v1, v10

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/Operators;->MINUS:Lorg/catrobat/catroid/formulaeditor/Operators;

    aput-object v2, v1, v11

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/Operators;->MULT:Lorg/catrobat/catroid/formulaeditor/Operators;

    aput-object v2, v1, v12

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/Operators;->DIVIDE:Lorg/catrobat/catroid/formulaeditor/Operators;

    aput-object v2, v1, v13

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/Operators;->MOD:Lorg/catrobat/catroid/formulaeditor/Operators;

    aput-object v2, v1, v14

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/Operators;->POW:Lorg/catrobat/catroid/formulaeditor/Operators;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    aput-object v0, v1, v15

    sput-object v1, Lorg/catrobat/catroid/formulaeditor/Operators;->$VALUES:[Lorg/catrobat/catroid/formulaeditor/Operators;

    .line 32
    const-class v0, Lorg/catrobat/catroid/formulaeditor/Operators;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/Operators;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "priority"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput p3, p0, Lorg/catrobat/catroid/formulaeditor/Operators;->priority:I

    .line 39
    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/catrobat/catroid/formulaeditor/Operators;->isLogicalOperator:Z

    .line 40
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0
    .param p3, "priority"    # I
    .param p4, "isLogical"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput p3, p0, Lorg/catrobat/catroid/formulaeditor/Operators;->priority:I

    .line 44
    iput-boolean p4, p0, Lorg/catrobat/catroid/formulaeditor/Operators;->isLogicalOperator:Z

    .line 45
    return-void
.end method

.method public static getOperatorByValue(Ljava/lang/String;)Lorg/catrobat/catroid/formulaeditor/Operators;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .line 52
    const-class v0, Lorg/catrobat/catroid/formulaeditor/Operators;

    invoke-static {v0, p0}, Lorg/catrobat/catroid/utils/EnumUtils;->getEnum(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/formulaeditor/Operators;

    return-object v0
.end method

.method public static isOperator(Ljava/lang/String;)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .line 56
    const-class v0, Lorg/catrobat/catroid/formulaeditor/Operators;

    invoke-static {v0, p0}, Lorg/catrobat/catroid/utils/EnumUtils;->isValidEnum(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/formulaeditor/Operators;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 27
    const-class v0, Lorg/catrobat/catroid/formulaeditor/Operators;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/formulaeditor/Operators;

    return-object v0
.end method

.method public static values()[Lorg/catrobat/catroid/formulaeditor/Operators;
    .locals 1

    .line 27
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/Operators;->$VALUES:[Lorg/catrobat/catroid/formulaeditor/Operators;

    invoke-virtual {v0}, [Lorg/catrobat/catroid/formulaeditor/Operators;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/catroid/formulaeditor/Operators;

    return-object v0
.end method


# virtual methods
.method public compareOperatorTo(Lorg/catrobat/catroid/formulaeditor/Operators;)I
    .locals 2
    .param p1, "operator"    # Lorg/catrobat/catroid/formulaeditor/Operators;

    .line 48
    iget v0, p0, Lorg/catrobat/catroid/formulaeditor/Operators;->priority:I

    iget v1, p1, Lorg/catrobat/catroid/formulaeditor/Operators;->priority:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method
