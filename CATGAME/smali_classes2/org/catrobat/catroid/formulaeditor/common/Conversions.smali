.class public final Lorg/catrobat/catroid/formulaeditor/common/Conversions;
.super Ljava/lang/Object;
.source "Conversions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000bH\u0007J\u0019\u0010\u000c\u001a\u0004\u0018\u00010\u00042\u0008\u0010\r\u001a\u0004\u0018\u00010\u0001H\u0007\u00a2\u0006\u0002\u0010\u000eJ\u001c\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0010H\u0007J\u0017\u0010\u0014\u001a\u0004\u0018\u00010\u00042\u0006\u0010\r\u001a\u00020\u0012H\u0002\u00a2\u0006\u0002\u0010\u0015J\u000c\u0010\u0016\u001a\u00020\u000b*\u0004\u0018\u00010\u0012R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\n \u0008*\u0004\u0018\u00010\u00070\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lorg/catrobat/catroid/formulaeditor/common/Conversions;",
        "",
        "()V",
        "FALSE",
        "",
        "TRUE",
        "colorPattern",
        "Ljava/util/regex/Pattern;",
        "kotlin.jvm.PlatformType",
        "booleanToDouble",
        "value",
        "",
        "convertArgumentToDouble",
        "argument",
        "(Ljava/lang/Object;)Ljava/lang/Double;",
        "tryParseColor",
        "",
        "string",
        "",
        "defaultValue",
        "tryParseDouble",
        "(Ljava/lang/String;)Ljava/lang/Double;",
        "isValidHexColor",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final FALSE:D = 0.0

.field public static final INSTANCE:Lorg/catrobat/catroid/formulaeditor/common/Conversions;

.field public static final TRUE:D = 1.0

.field private static final colorPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lorg/catrobat/catroid/formulaeditor/common/Conversions;

    invoke-direct {v0}, Lorg/catrobat/catroid/formulaeditor/common/Conversions;-><init>()V

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/common/Conversions;->INSTANCE:Lorg/catrobat/catroid/formulaeditor/common/Conversions;

    .line 33
    const-string v0, "#\\p{XDigit}{6}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/common/Conversions;->colorPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final booleanToDouble(Z)D
    .locals 2
    .param p0, "value"    # Z
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 70
    if-eqz p0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public static final convertArgumentToDouble(Ljava/lang/Object;)Ljava/lang/Double;
    .locals 4
    .param p0, "argument"    # Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 61
    if-eqz p0, :cond_1

    move-object v0, p0

    .local v0, "it":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 62
    .local v1, "$i$a$-let-Conversions$convertArgumentToDouble$1":I
    nop

    .line 63
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v2, Lorg/catrobat/catroid/formulaeditor/common/Conversions;->INSTANCE:Lorg/catrobat/catroid/formulaeditor/common/Conversions;

    move-object v3, p0

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/catrobat/catroid/formulaeditor/common/Conversions;->tryParseDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    goto :goto_0

    .line 64
    :cond_0
    move-object v2, p0

    check-cast v2, Ljava/lang/Double;

    .line 62
    nop

    .line 61
    .end local v0    # "it":Ljava/lang/Object;
    .end local v1    # "$i$a$-let-Conversions$convertArgumentToDouble$1":I
    :goto_0
    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return-object v2
.end method

.method public static final tryParseColor(Ljava/lang/String;)I
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lorg/catrobat/catroid/formulaeditor/common/Conversions;->tryParseColor$default(Ljava/lang/String;IILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static final tryParseColor(Ljava/lang/String;I)I
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 50
    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/Conversions;->INSTANCE:Lorg/catrobat/catroid/formulaeditor/common/Conversions;

    invoke-virtual {v0, p0}, Lorg/catrobat/catroid/formulaeditor/common/Conversions;->isValidHexColor(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 53
    :cond_0
    move v0, p1

    .line 50
    :goto_0
    return v0
.end method

.method public static synthetic tryParseColor$default(Ljava/lang/String;IILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    .line 49
    const/high16 p1, -0x1000000

    :cond_0
    invoke-static {p0, p1}, Lorg/catrobat/catroid/formulaeditor/common/Conversions;->tryParseColor(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private final tryParseDouble(Ljava/lang/String;)Ljava/lang/Double;
    .locals 4
    .param p1, "argument"    # Ljava/lang/String;

    .line 36
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "fFdD"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/StringUtils;->containsAny(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 37
    return-object v1

    .line 39
    :cond_0
    nop

    .line 40
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "numberFormatException":Ljava/lang/NumberFormatException;
    nop

    .line 39
    .end local v0    # "numberFormatException":Ljava/lang/NumberFormatException;
    :goto_0
    return-object v1
.end method


# virtual methods
.method public final isValidHexColor(Ljava/lang/String;)Z
    .locals 2
    .param p1, "$this$isValidHexColor"    # Ljava/lang/String;

    .line 57
    if-eqz p1, :cond_0

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/Conversions;->colorPattern:Ljava/util/regex/Pattern;

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
