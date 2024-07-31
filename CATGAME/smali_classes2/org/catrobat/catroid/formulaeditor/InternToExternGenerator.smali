.class public Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;
.super Ljava/lang/Object;
.source "InternToExternGenerator.java"


# static fields
.field private static final INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private generatedExternFormulaString:Ljava/lang/String;

.field private generatedExternInternRepresentationMapping:Lorg/catrobat/catroid/formulaeditor/ExternInternRepresentationMapping;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 37
    const-class v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->TAG:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    .line 45
    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Operators;->DIVIDE:Lorg/catrobat/catroid/formulaeditor/Operators;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Operators;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120410

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Operators;->MULT:Lorg/catrobat/catroid/formulaeditor/Operators;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Operators;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120412

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Operators;->MINUS:Lorg/catrobat/catroid/formulaeditor/Operators;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Operators;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120411

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Operators;->PLUS:Lorg/catrobat/catroid/formulaeditor/Operators;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Operators;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120413

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    const v1, 0x7f120352

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Functions;->SIN:Lorg/catrobat/catroid/formulaeditor/Functions;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Functions;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1203c0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Functions;->COS:Lorg/catrobat/catroid/formulaeditor/Functions;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Functions;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120382

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Functions;->TAN:Lorg/catrobat/catroid/formulaeditor/Functions;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Functions;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1203c4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Functions;->LN:Lorg/catrobat/catroid/formulaeditor/Functions;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Functions;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1203a0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Functions;->LOG:Lorg/catrobat/catroid/formulaeditor/Functions;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Functions;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1203a2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Functions;->PI:Lorg/catrobat/catroid/formulaeditor/Functions;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Functions;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1203b1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Functions;->SQRT:Lorg/catrobat/catroid/formulaeditor/Functions;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Functions;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1203c2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Functions;->RAND:Lorg/catrobat/catroid/formulaeditor/Functions;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Functions;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1203b6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Functions;->ABS:Lorg/catrobat/catroid/formulaeditor/Functions;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Functions;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12036c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Functions;->ROUND:Lorg/catrobat/catroid/formulaeditor/Functions;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Functions;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1203be

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Functions;->MOD:Lorg/catrobat/catroid/formulaeditor/Functions;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Functions;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1203a8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Functions;->ARCSIN:Lorg/catrobat/catroid/formulaeditor/Functions;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Functions;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120370

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Functions;->ARCCOS:Lorg/catrobat/catroid/formulaeditor/Functions;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Functions;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12036e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Functions;->ARCTAN:Lorg/catrobat/catroid/formulaeditor/Functions;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Functions;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120372

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Functions;->ARCTAN2:Lorg/catrobat/catroid/formulaeditor/Functions;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Functions;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120373

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Functions;->EXP:Lorg/catrobat/catroid/formulaeditor/Functions;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Functions;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120384

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Functions;->POWER:Lorg/catrobat/catroid/formulaeditor/Functions;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Functions;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1203b4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Functions;->FLOOR:Lorg/catrobat/catroid/formulaeditor/Functions;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Functions;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12038b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Functions;->CEIL:Lorg/catrobat/catroid/formulaeditor/Functions;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Functions;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120378

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Functions;->MAX:Lorg/catrobat/catroid/formulaeditor/Functions;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Functions;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1203a4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Functions;->MIN:Lorg/catrobat/catroid/formulaeditor/Functions;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Functions;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1203a6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Functions;->IF_THEN_ELSE:Lorg/catrobat/catroid/formulaeditor/Functions;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Functions;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12038e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Functions;->TRUE:Lorg/catrobat/catroid/formulaeditor/Functions;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Functions;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1203ce

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Functions;->FALSE:Lorg/catrobat/catroid/formulaeditor/Functions;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Functions;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120386

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Functions;->LENGTH:Lorg/catrobat/catroid/formulaeditor/Functions;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Functions;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12039a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Functions;->NUMBER_OF_ITEMS:Lorg/catrobat/catroid/formulaeditor/Functions;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Functions;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1203ae

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Functions;->LETTER:Lorg/catrobat/catroid/formulaeditor/Functions;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Functions;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12039c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Functions;->JOIN:Lorg/catrobat/catroid/formulaeditor/Functions;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Functions;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120396

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Functions;->JOIN3:Lorg/catrobat/catroid/formulaeditor/Functions;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Functions;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120397

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Functions;->REGEX:Lorg/catrobat/catroid/formulaeditor/Functions;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Functions;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1203b9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Functions;->FLATTEN:Lorg/catrobat/catroid/formulaeditor/Functions;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Functions;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120389

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->DRONE_BATTERY_STATUS:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120428

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->DRONE_EMERGENCY_STATE:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12042a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->DRONE_FLYING:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12042b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->DRONE_INITIALIZED:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12042c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->DRONE_USB_ACTIVE:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120430

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->DRONE_USB_REMAINING_TIME:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120431

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->DRONE_CAMERA_READY:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120429

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->DRONE_RECORD_READY:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12042e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->DRONE_RECORDING:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12042f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->DRONE_NUM_FRAMES:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12042d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Functions;->ARDUINODIGITAL:Lorg/catrobat/catroid/formulaeditor/Functions;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Functions;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120377

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Functions;->ARDUINOANALOG:Lorg/catrobat/catroid/formulaeditor/Functions;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Functions;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120376

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Functions;->RASPIDIGITAL:Lorg/catrobat/catroid/formulaeditor/Functions;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Functions;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1203b8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->FINGER_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120387

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->FINGER_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120388

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->FINGER_TOUCHED:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120394

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Functions;->MULTI_FINGER_X:Lorg/catrobat/catroid/formulaeditor/Functions;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Functions;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1203aa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Functions;->MULTI_FINGER_Y:Lorg/catrobat/catroid/formulaeditor/Functions;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Functions;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1203ab

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Functions;->MULTI_FINGER_TOUCHED:Lorg/catrobat/catroid/formulaeditor/Functions;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Functions;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120395

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Functions;->INDEX_CURRENT_TOUCH:Lorg/catrobat/catroid/formulaeditor/Functions;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Functions;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120390

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->LAST_FINGER_INDEX:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120393

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->NUMBER_CURRENT_TOUCHES:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1203ad

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Functions;->LIST_ITEM:Lorg/catrobat/catroid/formulaeditor/Functions;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Functions;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12039e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Functions;->CONTAINS:Lorg/catrobat/catroid/formulaeditor/Functions;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Functions;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120380

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Functions;->INDEX_OF_ITEM:Lorg/catrobat/catroid/formulaeditor/Functions;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Functions;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120391

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Functions;->COLOR_AT_XY:Lorg/catrobat/catroid/formulaeditor/Functions;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Functions;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12041f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Functions;->COLOR_EQUALS_COLOR:Lorg/catrobat/catroid/formulaeditor/Functions;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Functions;->name()Ljava/lang/String;

    move-result-object v1

    .line 114
    const v2, 0x7f120421

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 113
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->X_ACCELERATION:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1204aa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->Y_ACCELERATION:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1204ac

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->Z_ACCELERATION:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1204ae

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->COMPASS_DIRECTION:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120423

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->LATITUDE:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12043e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->LONGITUDE:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120477

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->LOCATION_ACCURACY:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120476

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->ALTITUDE:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12041e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->USER_LANGUAGE:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    .line 124
    const v2, 0x7f1204a9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 123
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->X_INCLINATION:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    .line 126
    const v2, 0x7f1204ab

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 125
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->Y_INCLINATION:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    .line 128
    const v2, 0x7f1204ad

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 127
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->FACE_DETECTED:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    .line 130
    const v2, 0x7f120432

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 129
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->FACE_SIZE:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120433

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->FACE_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    .line 133
    const v2, 0x7f120434

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 132
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->FACE_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    .line 135
    const v2, 0x7f120435

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 134
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->SECOND_FACE_DETECTED:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    .line 137
    const v2, 0x7f12049f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 136
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->SECOND_FACE_SIZE:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    .line 139
    const v2, 0x7f1204a0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 138
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->SECOND_FACE_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    .line 141
    const v2, 0x7f1204a1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 140
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->SECOND_FACE_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    .line 143
    const v2, 0x7f1204a2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 142
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->HEAD_TOP_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12043c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->HEAD_TOP_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12043d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->NECK_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12047d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->NECK_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12047e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->NOSE_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12047f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->NOSE_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120480

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_EYE_INNER_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120447

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_EYE_INNER_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120448

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_EYE_CENTER_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120445

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_EYE_CENTER_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120446

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_EYE_OUTER_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120449

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_EYE_OUTER_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12044a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_EYE_INNER_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120489

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_EYE_INNER_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12048a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_EYE_CENTER_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120487

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_EYE_CENTER_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120488

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_EYE_OUTER_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12048b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_EYE_OUTER_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12048c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_EAR_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120441

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_EAR_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120442

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_EAR_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120483

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_EAR_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120484

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->MOUTH_LEFT_CORNER_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120479

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->MOUTH_LEFT_CORNER_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12047a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->MOUTH_RIGHT_CORNER_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12047b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->MOUTH_RIGHT_CORNER_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12047c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_SHOULDER_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120457

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_SHOULDER_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120458

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_SHOULDER_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120499

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_SHOULDER_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12049a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_ELBOW_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120443

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_ELBOW_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120444

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_ELBOW_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120485

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_ELBOW_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120486

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_WRIST_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12045b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_WRIST_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12045c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_WRIST_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12049d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_WRIST_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12049e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_PINKY_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120455

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_PINKY_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120456

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_PINKY_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120497

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_PINKY_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120498

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_INDEX_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120451

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_INDEX_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120452

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_INDEX_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120493

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_INDEX_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120494

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_THUMB_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120459

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_THUMB_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12045a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_THUMB_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12049b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_THUMB_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12049c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_HIP_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12044f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_HIP_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120450

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_HIP_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120491

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_HIP_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120492

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_KNEE_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120453

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_KNEE_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120454

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_KNEE_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120495

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_KNEE_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120496

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_ANKLE_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12043f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_ANKLE_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120440

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_ANKLE_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120481

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_ANKLE_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120482

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_HEEL_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12044d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_HEEL_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12044e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_HEEL_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12048f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_HEEL_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120490

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_FOOT_INDEX_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12044b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_FOOT_INDEX_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12044c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_FOOT_INDEX_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12048d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_FOOT_INDEX_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12048e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->TEXT_FROM_CAMERA:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    .line 217
    const v2, 0x7f1204a4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 216
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->TEXT_BLOCKS_NUMBER:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    .line 219
    const v2, 0x7f1204a3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 218
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->TEXT_BLOCK_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    .line 221
    const v2, 0x7f1203ca

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 220
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->TEXT_BLOCK_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    .line 223
    const v2, 0x7f1203cb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 222
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->TEXT_BLOCK_SIZE:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    .line 225
    const v2, 0x7f1203c9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 224
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->TEXT_BLOCK_FROM_CAMERA:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    .line 227
    const v2, 0x7f1203c6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 226
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->TEXT_BLOCK_LANGUAGE_FROM_CAMERA:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    .line 229
    const v2, 0x7f1203c7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 228
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->GAMEPAD_A_PRESSED:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    .line 232
    const v2, 0x7f120436

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 231
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->GAMEPAD_B_PRESSED:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    .line 234
    const v2, 0x7f120437

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 233
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->GAMEPAD_UP_PRESSED:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    .line 236
    const v2, 0x7f12043b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 235
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->GAMEPAD_DOWN_PRESSED:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    .line 238
    const v2, 0x7f120438

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 237
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->GAMEPAD_LEFT_PRESSED:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    .line 240
    const v2, 0x7f120439

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 239
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->GAMEPAD_RIGHT_PRESSED:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    .line 242
    const v2, 0x7f12043a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 241
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->NXT_SENSOR_1:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12046d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->NXT_SENSOR_2:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12046e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->NXT_SENSOR_3:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12046f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->NXT_SENSOR_4:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120470

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->EV3_SENSOR_1:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12045d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->EV3_SENSOR_2:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12045e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->EV3_SENSOR_3:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12045f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->EV3_SENSOR_4:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120460

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->PHIRO_FRONT_LEFT:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120419

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->PHIRO_FRONT_RIGHT:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12041a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->PHIRO_SIDE_LEFT:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12041b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->PHIRO_SIDE_RIGHT:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12041c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->PHIRO_BOTTOM_LEFT:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120417

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->PHIRO_BOTTOM_RIGHT:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120418

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->NFC_TAG_ID:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1203f7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->NFC_TAG_MESSAGE:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1203f8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->LOUDNESS:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120478

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->TIMER:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1204a8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->DATE_YEAR:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120427

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->DATE_MONTH:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120425

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->DATE_DAY:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120424

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->DATE_WEEKDAY:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120426

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->TIME_HOUR:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1204a5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->TIME_MINUTE:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1204a6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->TIME_SECOND:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1204a7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->OBJECT_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12040c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->OBJECT_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12040e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->OBJECT_TRANSPARENCY:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12040b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->OBJECT_BRIGHTNESS:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1203fd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->OBJECT_COLOR:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1203fe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->OBJECT_SIZE:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12040a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->MOTION_DIRECTION:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120408

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->LOOK_DIRECTION:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120409

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->OBJECT_LAYER:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120401

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->COLLIDES_WITH_EDGE:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12037c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->COLLIDES_WITH_FINGER:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1203cd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Functions;->COLLIDES_WITH_COLOR:Lorg/catrobat/catroid/formulaeditor/Functions;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Functions;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12037a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Functions;->COLOR_TOUCHES_COLOR:Lorg/catrobat/catroid/formulaeditor/Functions;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Functions;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12037e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->OBJECT_X_VELOCITY:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12040d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->OBJECT_Y_VELOCITY:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12040f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->OBJECT_ANGULAR_VELOCITY:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1203fa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->OBJECT_LOOK_NUMBER:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120404

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->OBJECT_LOOK_NAME:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120403

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->OBJECT_NUMBER_OF_LOOKS:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120407

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->OBJECT_BACKGROUND_NUMBER:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1203fc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->OBJECT_BACKGROUND_NAME:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1203fb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->OBJECT_DISTANCE_TO:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1203ff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Operators;->LOGICAL_NOT:Lorg/catrobat/catroid/formulaeditor/Operators;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Operators;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1203f3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Operators;->NOT_EQUAL:Lorg/catrobat/catroid/formulaeditor/Operators;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Operators;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1203f4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Operators;->EQUAL:Lorg/catrobat/catroid/formulaeditor/Operators;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Operators;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1203ee

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Operators;->GREATER_OR_EQUAL:Lorg/catrobat/catroid/formulaeditor/Operators;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Operators;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1203ef

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Operators;->GREATER_THAN:Lorg/catrobat/catroid/formulaeditor/Operators;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Operators;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1203f0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Operators;->LOGICAL_AND:Lorg/catrobat/catroid/formulaeditor/Operators;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Operators;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1203eb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Operators;->LOGICAL_OR:Lorg/catrobat/catroid/formulaeditor/Operators;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Operators;->name()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1203f5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Operators;->SMALLER_OR_EQUAL:Lorg/catrobat/catroid/formulaeditor/Operators;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Operators;->name()Ljava/lang/String;

    move-result-object v1

    .line 308
    const v2, 0x7f1203f1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 307
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Operators;->SMALLER_THAN:Lorg/catrobat/catroid/formulaeditor/Operators;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Operators;->name()Ljava/lang/String;

    move-result-object v1

    .line 310
    const v2, 0x7f1203f2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 309
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->SPEECH_RECOGNITION_LANGUAGE:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    .line 313
    const v2, 0x7f1203e9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 312
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Functions;->ID_OF_DETECTED_OBJECT:Lorg/catrobat/catroid/formulaeditor/Functions;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Functions;->name()Ljava/lang/String;

    move-result-object v1

    .line 316
    const v2, 0x7f12038d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 315
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Functions;->OBJECT_WITH_ID_VISIBLE:Lorg/catrobat/catroid/formulaeditor/Functions;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Functions;->name()Ljava/lang/String;

    move-result-object v1

    .line 318
    const v2, 0x7f1203b0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 317
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    iput-object p1, p0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->context:Landroid/content/Context;

    .line 322
    const-string v0, ""

    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->generatedExternFormulaString:Ljava/lang/String;

    .line 323
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/ExternInternRepresentationMapping;

    invoke-direct {v0}, Lorg/catrobat/catroid/formulaeditor/ExternInternRepresentationMapping;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->generatedExternInternRepresentationMapping:Lorg/catrobat/catroid/formulaeditor/ExternInternRepresentationMapping;

    .line 324
    return-void
.end method

.method private appendWhiteSpace(Lorg/catrobat/catroid/formulaeditor/InternToken;Lorg/catrobat/catroid/formulaeditor/InternToken;)Z
    .locals 4
    .param p1, "currentToken"    # Lorg/catrobat/catroid/formulaeditor/InternToken;
    .param p2, "nextToken"    # Lorg/catrobat/catroid/formulaeditor/InternToken;

    .line 452
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 453
    return v0

    .line 455
    :cond_0
    const/4 v1, 0x1

    if-nez p2, :cond_1

    .line 456
    return v1

    .line 459
    :cond_1
    sget-object v2, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator$1;->$SwitchMap$org$catrobat$catroid$formulaeditor$InternTokenType:[I

    invoke-virtual {p2}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getInternTokenType()Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    move-result-object v3

    invoke-virtual {v3}, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    .line 463
    return v1

    .line 461
    :cond_2
    return v0
.end method

.method private generateExternStringFromToken(Lorg/catrobat/catroid/formulaeditor/InternToken;Z)Ljava/lang/String;
    .locals 4
    .param p1, "internToken"    # Lorg/catrobat/catroid/formulaeditor/InternToken;
    .param p2, "trimNumbers"    # Z

    .line 383
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator$1;->$SwitchMap$org$catrobat$catroid$formulaeditor$InternTokenType:[I

    invoke-virtual {p1}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getInternTokenType()Lorg/catrobat/catroid/formulaeditor/InternTokenType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/InternTokenType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, ")"

    const-string v2, "("

    packed-switch v0, :pswitch_data_0

    .line 417
    invoke-virtual {p1}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getTokenStringValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->context:Landroid/content/Context;

    invoke-direct {p0, v0, v1}, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->getExternStringForInternTokenValue(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 412
    :pswitch_0
    invoke-static {}, Lorg/catrobat/catroid/CatroidApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f12037d

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 414
    .local v0, "collisionTag":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getTokenStringValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 410
    .end local v0    # "collisionTag":Ljava/lang/String;
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getTokenStringValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 408
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getTokenStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 406
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getTokenStringValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 404
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getTokenStringValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 402
    :pswitch_5
    const-string v0, ","

    return-object v0

    .line 400
    :pswitch_6
    return-object v1

    .line 397
    :pswitch_7
    return-object v2

    .line 390
    :pswitch_8
    invoke-virtual {p1}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getTokenStringValue()Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, "returnvalue":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getTokenStringValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->context:Landroid/content/Context;

    invoke-direct {p0, v1, v2}, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->getExternStringForInternTokenValue(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 393
    .local v1, "mappingValue":Ljava/lang/String;
    if-nez v1, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    return-object v2

    .line 385
    .end local v0    # "returnvalue":Ljava/lang/String;
    .end local v1    # "mappingValue":Ljava/lang/String;
    :pswitch_9
    invoke-virtual {p1}, Lorg/catrobat/catroid/formulaeditor/InternToken;->getTokenStringValue()Ljava/lang/String;

    move-result-object v0

    .line 386
    .local v0, "number":Ljava/lang/String;
    invoke-direct {p0, v0, p2}, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->getExternStringForNumber(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private generateStringAndMappingInternal(Ljava/util/List;Z)V
    .locals 10
    .param p2, "trimNumbers"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/InternToken;",
            ">;Z)V"
        }
    .end annotation

    .line 335
    .local p1, "internTokenFormula":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->TAG:Ljava/lang/String;

    const-string v1, "generateExternStringAndMapping:enter"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 339
    .local v0, "internTokenList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/formulaeditor/InternToken;

    .line 340
    .local v2, "internToken":Lorg/catrobat/catroid/formulaeditor/InternToken;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    .end local v2    # "internToken":Lorg/catrobat/catroid/formulaeditor/InternToken;
    goto :goto_0

    .line 343
    :cond_0
    new-instance v1, Lorg/catrobat/catroid/formulaeditor/ExternInternRepresentationMapping;

    invoke-direct {v1}, Lorg/catrobat/catroid/formulaeditor/ExternInternRepresentationMapping;-><init>()V

    iput-object v1, p0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->generatedExternInternRepresentationMapping:Lorg/catrobat/catroid/formulaeditor/ExternInternRepresentationMapping;

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 346
    .local v1, "externalFormulaString":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 347
    .local v2, "currentToken":Lorg/catrobat/catroid/formulaeditor/InternToken;
    const/4 v3, 0x0

    .line 352
    .local v3, "nextToken":Lorg/catrobat/catroid/formulaeditor/InternToken;
    const/4 v4, 0x0

    .line 354
    .local v4, "internTokenListIndex":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    const/16 v6, 0x20

    if-nez v5, :cond_3

    .line 355
    invoke-direct {p0, v2, v3}, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->appendWhiteSpace(Lorg/catrobat/catroid/formulaeditor/InternToken;Lorg/catrobat/catroid/formulaeditor/InternToken;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 356
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 358
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    .line 359
    .local v5, "externStringStartIndex":I
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v2, v7

    check-cast v2, Lorg/catrobat/catroid/formulaeditor/InternToken;

    .line 361
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x2

    if-ge v7, v8, :cond_2

    .line 362
    const/4 v3, 0x0

    goto :goto_2

    .line 364
    :cond_2
    const/4 v7, 0x1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v3, v7

    check-cast v3, Lorg/catrobat/catroid/formulaeditor/InternToken;

    .line 367
    :goto_2
    invoke-direct {p0, v2, p2}, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->generateExternStringFromToken(Lorg/catrobat/catroid/formulaeditor/InternToken;Z)Ljava/lang/String;

    move-result-object v7

    .line 368
    .local v7, "externTokenString":Ljava/lang/String;
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    .line 371
    .local v8, "externStringEndIndex":I
    iget-object v9, p0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->generatedExternInternRepresentationMapping:Lorg/catrobat/catroid/formulaeditor/ExternInternRepresentationMapping;

    invoke-virtual {v9, v5, v8, v4}, Lorg/catrobat/catroid/formulaeditor/ExternInternRepresentationMapping;->putMapping(III)V

    .line 374
    invoke-interface {v0, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 375
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 378
    .end local v5    # "externStringStartIndex":I
    .end local v7    # "externTokenString":Ljava/lang/String;
    .end local v8    # "externStringEndIndex":I
    :cond_3
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 379
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->generatedExternFormulaString:Ljava/lang/String;

    .line 380
    return-void
.end method

.method private getExternStringForInternTokenValue(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "internTokenValue"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .line 475
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 476
    .local v0, "stringResourceID":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 477
    const/4 v1, 0x0

    return-object v1

    .line 479
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getExternStringForNumber(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "trimNumbers"    # Z

    .line 423
    if-eqz p2, :cond_0

    .line 424
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->getNumberExponentRepresentation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 427
    :cond_0
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 428
    return-object p1

    .line 431
    :cond_1
    const/4 v1, 0x0

    const/16 v2, 0x2e

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 432
    .local v1, "left":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 434
    .local v2, "right":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->context:Landroid/content/Context;

    invoke-direct {p0, v0, v4}, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->getExternStringForInternTokenValue(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMappedString(Ljava/lang/String;)I
    .locals 1
    .param p0, "token"    # Ljava/lang/String;

    .line 483
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private getNumberExponentRepresentation(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "number"    # Ljava/lang/String;

    .line 439
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 440
    .local v0, "value":Ljava/lang/Double;
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 442
    .local v1, "numberToCheck":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    const-string v2, "E"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 443
    move-object p1, v1

    goto :goto_0

    .line 445
    :cond_0
    invoke-static {p1}, Lorg/catrobat/catroid/utils/FormatNumberUtil;->cutTrailingZeros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 448
    :goto_0
    return-object p1
.end method

.method public static setInternExternLanguageConverterMap(Lorg/catrobat/catroid/formulaeditor/Sensors;Ljava/lang/Integer;)V
    .locals 2
    .param p0, "sensor"    # Lorg/catrobat/catroid/formulaeditor/Sensors;
    .param p1, "output"    # Ljava/lang/Integer;

    .line 487
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->INTERN_EXTERN_LANGUAGE_CONVERTER_MAP:Ljava/util/HashMap;

    invoke-virtual {p0}, Lorg/catrobat/catroid/formulaeditor/Sensors;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    return-void
.end method


# virtual methods
.method public generateExternStringAndMapping(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/InternToken;",
            ">;)V"
        }
    .end annotation

    .line 327
    .local p1, "internTokenFormula":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->generateStringAndMappingInternal(Ljava/util/List;Z)V

    .line 328
    return-void
.end method

.method public getGeneratedExternFormulaString()Ljava/lang/String;
    .locals 1

    .line 467
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->generatedExternFormulaString:Ljava/lang/String;

    return-object v0
.end method

.method public getGeneratedExternInternRepresentationMapping()Lorg/catrobat/catroid/formulaeditor/ExternInternRepresentationMapping;
    .locals 1

    .line 471
    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->generatedExternInternRepresentationMapping:Lorg/catrobat/catroid/formulaeditor/ExternInternRepresentationMapping;

    return-object v0
.end method

.method public trimExternString(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/InternToken;",
            ">;)V"
        }
    .end annotation

    .line 331
    .local p1, "internTokenFormula":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/InternToken;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/catrobat/catroid/formulaeditor/InternToExternGenerator;->generateStringAndMappingInternal(Ljava/util/List;Z)V

    .line 332
    return-void
.end method
