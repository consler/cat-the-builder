.class public final enum Lorg/catrobat/catroid/formulaeditor/InternTokenType;
.super Ljava/lang/Enum;
.source "InternTokenType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/catrobat/catroid/formulaeditor/InternTokenType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/catrobat/catroid/formulaeditor/InternTokenType;

.field public static final enum BRACKET_CLOSE:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

.field public static final enum BRACKET_OPEN:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

.field public static final enum COLLISION_FORMULA:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

.field public static final enum FUNCTION_NAME:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

.field public static final enum FUNCTION_PARAMETERS_BRACKET_CLOSE:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

.field public static final enum FUNCTION_PARAMETERS_BRACKET_OPEN:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

.field public static final enum FUNCTION_PARAMETER_DELIMITER:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

.field public static final enum NUMBER:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

.field public static final enum OPERATOR:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

.field public static final enum PARSER_END_OF_FILE:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

.field public static final enum PERIOD:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

.field public static final enum SENSOR:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

.field public static final enum STRING:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

.field public static final enum USER_DEFINED_BRICK_INPUT:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

.field public static final enum USER_LIST:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

.field public static final enum USER_VARIABLE:Lorg/catrobat/catroid/formulaeditor/InternTokenType;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 26
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    const-string v1, "NUMBER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/catrobat/catroid/formulaeditor/InternTokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    new-instance v0, Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    const-string v1, "OPERATOR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/catrobat/catroid/formulaeditor/InternTokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->OPERATOR:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    new-instance v0, Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    const-string v1, "FUNCTION_NAME"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/catrobat/catroid/formulaeditor/InternTokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->FUNCTION_NAME:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    new-instance v0, Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    const-string v1, "BRACKET_OPEN"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/catrobat/catroid/formulaeditor/InternTokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->BRACKET_OPEN:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    new-instance v0, Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    const-string v1, "BRACKET_CLOSE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lorg/catrobat/catroid/formulaeditor/InternTokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->BRACKET_CLOSE:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    new-instance v0, Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    const-string v1, "SENSOR"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lorg/catrobat/catroid/formulaeditor/InternTokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->SENSOR:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    new-instance v0, Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    const-string v1, "FUNCTION_PARAMETERS_BRACKET_OPEN"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lorg/catrobat/catroid/formulaeditor/InternTokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->FUNCTION_PARAMETERS_BRACKET_OPEN:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    .line 27
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    const-string v1, "FUNCTION_PARAMETERS_BRACKET_CLOSE"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lorg/catrobat/catroid/formulaeditor/InternTokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->FUNCTION_PARAMETERS_BRACKET_CLOSE:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    new-instance v0, Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    const-string v1, "FUNCTION_PARAMETER_DELIMITER"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lorg/catrobat/catroid/formulaeditor/InternTokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->FUNCTION_PARAMETER_DELIMITER:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    new-instance v0, Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    const-string v1, "PERIOD"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lorg/catrobat/catroid/formulaeditor/InternTokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->PERIOD:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    new-instance v0, Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    const-string v1, "USER_VARIABLE"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lorg/catrobat/catroid/formulaeditor/InternTokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->USER_VARIABLE:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    .line 28
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    const-string v1, "USER_LIST"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lorg/catrobat/catroid/formulaeditor/InternTokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->USER_LIST:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    new-instance v0, Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    const-string v1, "USER_DEFINED_BRICK_INPUT"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lorg/catrobat/catroid/formulaeditor/InternTokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->USER_DEFINED_BRICK_INPUT:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    new-instance v0, Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    const-string v1, "COLLISION_FORMULA"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lorg/catrobat/catroid/formulaeditor/InternTokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->COLLISION_FORMULA:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    new-instance v0, Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    const-string v1, "STRING"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lorg/catrobat/catroid/formulaeditor/InternTokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->STRING:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    new-instance v0, Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    const-string v1, "PARSER_END_OF_FILE"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15}, Lorg/catrobat/catroid/formulaeditor/InternTokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->PARSER_END_OF_FILE:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    .line 25
    const/16 v1, 0x10

    new-array v1, v1, [Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    sget-object v16, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->NUMBER:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    aput-object v16, v1, v2

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->OPERATOR:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    aput-object v2, v1, v3

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->FUNCTION_NAME:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    aput-object v2, v1, v4

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->BRACKET_OPEN:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    aput-object v2, v1, v5

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->BRACKET_CLOSE:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    aput-object v2, v1, v6

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->SENSOR:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    aput-object v2, v1, v7

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->FUNCTION_PARAMETERS_BRACKET_OPEN:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    aput-object v2, v1, v8

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->FUNCTION_PARAMETERS_BRACKET_CLOSE:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    aput-object v2, v1, v9

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->FUNCTION_PARAMETER_DELIMITER:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    aput-object v2, v1, v10

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->PERIOD:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    aput-object v2, v1, v11

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->USER_VARIABLE:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    aput-object v2, v1, v12

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->USER_LIST:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    aput-object v2, v1, v13

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->USER_DEFINED_BRICK_INPUT:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    aput-object v2, v1, v14

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->COLLISION_FORMULA:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->STRING:Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    aput-object v0, v1, v15

    sput-object v1, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->$VALUES:[Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/formulaeditor/InternTokenType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 25
    const-class v0, Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    return-object v0
.end method

.method public static values()[Lorg/catrobat/catroid/formulaeditor/InternTokenType;
    .locals 1

    .line 25
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->$VALUES:[Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    invoke-virtual {v0}, [Lorg/catrobat/catroid/formulaeditor/InternTokenType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    return-object v0
.end method
