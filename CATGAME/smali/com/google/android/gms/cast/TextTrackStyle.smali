.class public final Lcom/google/android/gms/cast/TextTrackStyle;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final COLOR_UNSPECIFIED:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/cast/TextTrackStyle;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_FONT_SCALE:F = 1.0f

.field public static final EDGE_TYPE_DEPRESSED:I = 0x4

.field public static final EDGE_TYPE_DROP_SHADOW:I = 0x2

.field public static final EDGE_TYPE_NONE:I = 0x0

.field public static final EDGE_TYPE_OUTLINE:I = 0x1

.field public static final EDGE_TYPE_RAISED:I = 0x3

.field public static final EDGE_TYPE_UNSPECIFIED:I = -0x1

.field public static final FONT_FAMILY_CASUAL:I = 0x4

.field public static final FONT_FAMILY_CURSIVE:I = 0x5

.field public static final FONT_FAMILY_MONOSPACED_SANS_SERIF:I = 0x1

.field public static final FONT_FAMILY_MONOSPACED_SERIF:I = 0x3

.field public static final FONT_FAMILY_SANS_SERIF:I = 0x0

.field public static final FONT_FAMILY_SERIF:I = 0x2

.field public static final FONT_FAMILY_SMALL_CAPITALS:I = 0x6

.field public static final FONT_FAMILY_UNSPECIFIED:I = -0x1

.field public static final FONT_STYLE_BOLD:I = 0x1

.field public static final FONT_STYLE_BOLD_ITALIC:I = 0x3

.field public static final FONT_STYLE_ITALIC:I = 0x2

.field public static final FONT_STYLE_NORMAL:I = 0x0

.field public static final FONT_STYLE_UNSPECIFIED:I = -0x1

.field public static final WINDOW_TYPE_NONE:I = 0x0

.field public static final WINDOW_TYPE_NORMAL:I = 0x1

.field public static final WINDOW_TYPE_ROUNDED:I = 0x2

.field public static final WINDOW_TYPE_UNSPECIFIED:I = -0x1


# instance fields
.field private backgroundColor:I

.field private edgeColor:I

.field private edgeType:I

.field private fontScale:F

.field private fontStyle:I

.field private foregroundColor:I

.field private windowColor:I

.field private zzhi:I

.field private zzhj:I

.field private zzhk:Ljava/lang/String;

.field private zzhl:I

.field private zzj:Ljava/lang/String;

.field private zzp:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 294
    new-instance v0, Lcom/google/android/gms/cast/zzbw;

    invoke-direct {v0}, Lcom/google/android/gms/cast/zzbw;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/TextTrackStyle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 13

    .line 23
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/google/android/gms/cast/TextTrackStyle;-><init>(FIIIIIIILjava/lang/String;IILjava/lang/String;)V

    .line 24
    return-void
.end method

.method constructor <init>(FIIIIIIILjava/lang/String;IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->fontScale:F

    .line 3
    iput p2, p0, Lcom/google/android/gms/cast/TextTrackStyle;->foregroundColor:I

    .line 4
    iput p3, p0, Lcom/google/android/gms/cast/TextTrackStyle;->backgroundColor:I

    .line 5
    iput p4, p0, Lcom/google/android/gms/cast/TextTrackStyle;->edgeType:I

    .line 6
    iput p5, p0, Lcom/google/android/gms/cast/TextTrackStyle;->edgeColor:I

    .line 7
    iput p6, p0, Lcom/google/android/gms/cast/TextTrackStyle;->zzhi:I

    .line 8
    iput p7, p0, Lcom/google/android/gms/cast/TextTrackStyle;->windowColor:I

    .line 9
    iput p8, p0, Lcom/google/android/gms/cast/TextTrackStyle;->zzhj:I

    .line 10
    iput-object p9, p0, Lcom/google/android/gms/cast/TextTrackStyle;->zzhk:Ljava/lang/String;

    .line 11
    iput p10, p0, Lcom/google/android/gms/cast/TextTrackStyle;->zzhl:I

    .line 12
    iput p11, p0, Lcom/google/android/gms/cast/TextTrackStyle;->fontStyle:I

    .line 13
    iput-object p12, p0, Lcom/google/android/gms/cast/TextTrackStyle;->zzj:Ljava/lang/String;

    .line 14
    const/4 p1, 0x0

    if-eqz p12, :cond_0

    .line 15
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    iget-object p3, p0, Lcom/google/android/gms/cast/TextTrackStyle;->zzj:Ljava/lang/String;

    invoke-direct {p2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/cast/TextTrackStyle;->zzp:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    return-void

    .line 17
    :catch_0
    move-exception p2

    .line 18
    iput-object p1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->zzp:Lorg/json/JSONObject;

    .line 19
    iput-object p1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->zzj:Ljava/lang/String;

    .line 20
    return-void

    .line 21
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->zzp:Lorg/json/JSONObject;

    .line 22
    return-void
.end method

.method public static fromSystemSettings(Landroid/content/Context;)Lcom/google/android/gms/cast/TextTrackStyle;
    .locals 5

    .line 71
    new-instance v0, Lcom/google/android/gms/cast/TextTrackStyle;

    invoke-direct {v0}, Lcom/google/android/gms/cast/TextTrackStyle;-><init>()V

    .line 72
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastKitKat()Z

    move-result v1

    if-nez v1, :cond_0

    .line 73
    return-object v0

    .line 74
    :cond_0
    nop

    .line 75
    const-string v1, "captioning"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/CaptioningManager;

    .line 76
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/TextTrackStyle;->setFontScale(F)V

    .line 77
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object p0

    .line 78
    iget v1, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/TextTrackStyle;->setBackgroundColor(I)V

    .line 79
    iget v1, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/TextTrackStyle;->setForegroundColor(I)V

    .line 80
    iget v1, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    .line 85
    invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/TextTrackStyle;->setEdgeType(I)V

    goto :goto_0

    .line 83
    :cond_1
    invoke-virtual {v0, v3}, Lcom/google/android/gms/cast/TextTrackStyle;->setEdgeType(I)V

    .line 84
    goto :goto_0

    .line 81
    :cond_2
    invoke-virtual {v0, v4}, Lcom/google/android/gms/cast/TextTrackStyle;->setEdgeType(I)V

    .line 82
    nop

    .line 86
    :goto_0
    iget v1, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/TextTrackStyle;->setEdgeColor(I)V

    .line 87
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p0

    .line 88
    if-eqz p0, :cond_8

    .line 89
    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v1, p0}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 90
    invoke-virtual {v0, v4}, Lcom/google/android/gms/cast/TextTrackStyle;->setFontGenericFamily(I)V

    goto :goto_1

    .line 91
    :cond_3
    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v1, p0}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 92
    sget-object v1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v1, p0}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 93
    invoke-virtual {v0, v3}, Lcom/google/android/gms/cast/TextTrackStyle;->setFontGenericFamily(I)V

    goto :goto_1

    .line 94
    :cond_4
    invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/TextTrackStyle;->setFontGenericFamily(I)V

    .line 95
    :goto_1
    invoke-virtual {p0}, Landroid/graphics/Typeface;->isBold()Z

    move-result v1

    .line 96
    invoke-virtual {p0}, Landroid/graphics/Typeface;->isItalic()Z

    move-result p0

    .line 97
    if-eqz v1, :cond_5

    if-eqz p0, :cond_5

    .line 98
    const/4 p0, 0x3

    invoke-virtual {v0, p0}, Lcom/google/android/gms/cast/TextTrackStyle;->setFontStyle(I)V

    goto :goto_2

    .line 99
    :cond_5
    if-eqz v1, :cond_6

    .line 100
    invoke-virtual {v0, v4}, Lcom/google/android/gms/cast/TextTrackStyle;->setFontStyle(I)V

    goto :goto_2

    .line 101
    :cond_6
    if-eqz p0, :cond_7

    .line 102
    invoke-virtual {v0, v3}, Lcom/google/android/gms/cast/TextTrackStyle;->setFontStyle(I)V

    goto :goto_2

    .line 103
    :cond_7
    invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/TextTrackStyle;->setFontStyle(I)V

    .line 104
    :cond_8
    :goto_2
    return-object v0
.end method

.method private static zzg(I)Ljava/lang/String;
    .locals 3

    .line 218
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 219
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x3

    aput-object p0, v0, v1

    .line 220
    const-string p0, "#%02X%02X%02X%02X"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static zzi(Ljava/lang/String;)I
    .locals 7

    .line 221
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x23

    if-ne v1, v3, :cond_0

    .line 222
    const/4 v1, 0x1

    const/4 v3, 0x3

    :try_start_0
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x10

    invoke-static {v1, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 223
    const/4 v5, 0x5

    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 224
    const/4 v6, 0x7

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 225
    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    .line 226
    invoke-static {p0, v1, v3, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 227
    :catch_0
    move-exception p0

    .line 228
    :cond_0
    return v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 229
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 230
    return v0

    .line 231
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/cast/TextTrackStyle;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 232
    return v2

    .line 233
    :cond_1
    check-cast p1, Lcom/google/android/gms/cast/TextTrackStyle;

    .line 234
    iget-object v1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->zzp:Lorg/json/JSONObject;

    if-nez v1, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    iget-object v3, p1, Lcom/google/android/gms/cast/TextTrackStyle;->zzp:Lorg/json/JSONObject;

    if-nez v3, :cond_3

    move v3, v0

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    if-eq v1, v3, :cond_4

    .line 235
    return v2

    .line 236
    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->zzp:Lorg/json/JSONObject;

    if-eqz v1, :cond_5

    iget-object v3, p1, Lcom/google/android/gms/cast/TextTrackStyle;->zzp:Lorg/json/JSONObject;

    if-eqz v3, :cond_5

    .line 237
    invoke-static {v1, v3}, Lcom/google/android/gms/common/util/JsonUtils;->areJsonValuesEquivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 238
    return v2

    .line 239
    :cond_5
    iget v1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->fontScale:F

    iget v3, p1, Lcom/google/android/gms/cast/TextTrackStyle;->fontScale:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_6

    iget v1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->foregroundColor:I

    iget v3, p1, Lcom/google/android/gms/cast/TextTrackStyle;->foregroundColor:I

    if-ne v1, v3, :cond_6

    iget v1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->backgroundColor:I

    iget v3, p1, Lcom/google/android/gms/cast/TextTrackStyle;->backgroundColor:I

    if-ne v1, v3, :cond_6

    iget v1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->edgeType:I

    iget v3, p1, Lcom/google/android/gms/cast/TextTrackStyle;->edgeType:I

    if-ne v1, v3, :cond_6

    iget v1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->edgeColor:I

    iget v3, p1, Lcom/google/android/gms/cast/TextTrackStyle;->edgeColor:I

    if-ne v1, v3, :cond_6

    iget v1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->zzhi:I

    iget v3, p1, Lcom/google/android/gms/cast/TextTrackStyle;->zzhi:I

    if-ne v1, v3, :cond_6

    iget v1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->zzhj:I

    iget v3, p1, Lcom/google/android/gms/cast/TextTrackStyle;->zzhj:I

    if-ne v1, v3, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->zzhk:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/TextTrackStyle;->zzhk:Ljava/lang/String;

    .line 240
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/cast/zzdc;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->zzhl:I

    iget v3, p1, Lcom/google/android/gms/cast/TextTrackStyle;->zzhl:I

    if-ne v1, v3, :cond_6

    iget v1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->fontStyle:I

    iget p1, p1, Lcom/google/android/gms/cast/TextTrackStyle;->fontStyle:I

    if-ne v1, p1, :cond_6

    return v0

    :cond_6
    nop

    .line 241
    return v2
.end method

.method public final getBackgroundColor()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->backgroundColor:I

    return v0
.end method

.method public final getCustomData()Lorg/json/JSONObject;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->zzp:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final getEdgeColor()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->edgeColor:I

    return v0
.end method

.method public final getEdgeType()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->edgeType:I

    return v0
.end method

.method public final getFontFamily()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->zzhk:Ljava/lang/String;

    return-object v0
.end method

.method public final getFontGenericFamily()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->zzhl:I

    return v0
.end method

.method public final getFontScale()F
    .locals 1

    .line 27
    iget v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->fontScale:F

    return v0
.end method

.method public final getFontStyle()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->fontStyle:I

    return v0
.end method

.method public final getForegroundColor()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->foregroundColor:I

    return v0
.end method

.method public final getWindowColor()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->windowColor:I

    return v0
.end method

.method public final getWindowCornerRadius()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->zzhj:I

    return v0
.end method

.method public final getWindowType()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->zzhi:I

    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 242
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->fontScale:F

    .line 243
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->foregroundColor:I

    .line 244
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->backgroundColor:I

    .line 245
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->edgeType:I

    .line 246
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->edgeColor:I

    .line 247
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->zzhi:I

    .line 248
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->windowColor:I

    .line 249
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->zzhj:I

    .line 250
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->zzhk:Ljava/lang/String;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->zzhl:I

    .line 251
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->fontStyle:I

    .line 252
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->zzp:Lorg/json/JSONObject;

    .line 253
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 254
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final setBackgroundColor(I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->backgroundColor:I

    .line 32
    return-void
.end method

.method public final setCustomData(Lorg/json/JSONObject;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->zzp:Lorg/json/JSONObject;

    .line 69
    return-void
.end method

.method public final setEdgeColor(I)V
    .locals 0

    .line 39
    iput p1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->edgeColor:I

    .line 40
    return-void
.end method

.method public final setEdgeType(I)V
    .locals 1

    .line 34
    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-gt p1, v0, :cond_0

    .line 36
    iput p1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->edgeType:I

    .line 37
    return-void

    .line 35
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid edgeType"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setFontFamily(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->zzhk:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public final setFontGenericFamily(I)V
    .locals 1

    .line 58
    if-ltz p1, :cond_0

    const/4 v0, 0x6

    if-gt p1, v0, :cond_0

    .line 60
    iput p1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->zzhl:I

    .line 61
    return-void

    .line 59
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid fontGenericFamily"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setFontScale(F)V
    .locals 0

    .line 25
    iput p1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->fontScale:F

    .line 26
    return-void
.end method

.method public final setFontStyle(I)V
    .locals 1

    .line 63
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    .line 65
    iput p1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->fontStyle:I

    .line 66
    return-void

    .line 64
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid fontStyle"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setForegroundColor(I)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->foregroundColor:I

    .line 29
    return-void
.end method

.method public final setWindowColor(I)V
    .locals 0

    .line 47
    iput p1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->windowColor:I

    .line 48
    return-void
.end method

.method public final setWindowCornerRadius(I)V
    .locals 1

    .line 50
    if-ltz p1, :cond_0

    .line 52
    iput p1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->zzhj:I

    .line 53
    return-void

    .line 51
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid windowCornerRadius"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setWindowType(I)V
    .locals 1

    .line 42
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    .line 44
    iput p1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->zzhi:I

    .line 45
    return-void

    .line 43
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid windowType"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final toJson()Lorg/json/JSONObject;
    .locals 8

    .line 161
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 162
    :try_start_0
    const-string v1, "fontScale"

    iget v2, p0, Lcom/google/android/gms/cast/TextTrackStyle;->fontScale:F

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 163
    iget v1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->foregroundColor:I

    if-eqz v1, :cond_0

    .line 164
    const-string v1, "foregroundColor"

    iget v2, p0, Lcom/google/android/gms/cast/TextTrackStyle;->foregroundColor:I

    invoke-static {v2}, Lcom/google/android/gms/cast/TextTrackStyle;->zzg(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 165
    :cond_0
    iget v1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->backgroundColor:I

    if-eqz v1, :cond_1

    .line 166
    const-string v1, "backgroundColor"

    iget v2, p0, Lcom/google/android/gms/cast/TextTrackStyle;->backgroundColor:I

    invoke-static {v2}, Lcom/google/android/gms/cast/TextTrackStyle;->zzg(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 167
    :cond_1
    iget v1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->edgeType:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "NONE"

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x2

    const-string v6, "edgeType"

    if-eqz v1, :cond_6

    if-eq v1, v4, :cond_5

    if-eq v1, v5, :cond_4

    if-eq v1, v3, :cond_3

    const/4 v7, 0x4

    if-eq v1, v7, :cond_2

    goto :goto_0

    .line 176
    :cond_2
    :try_start_1
    const-string v1, "DEPRESSED"

    invoke-virtual {v0, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 174
    :cond_3
    const-string v1, "RAISED"

    invoke-virtual {v0, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 175
    goto :goto_0

    .line 172
    :cond_4
    const-string v1, "DROP_SHADOW"

    invoke-virtual {v0, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 173
    goto :goto_0

    .line 170
    :cond_5
    const-string v1, "OUTLINE"

    invoke-virtual {v0, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    goto :goto_0

    .line 168
    :cond_6
    invoke-virtual {v0, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 169
    nop

    .line 177
    :goto_0
    iget v1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->edgeColor:I

    if-eqz v1, :cond_7

    .line 178
    const-string v1, "edgeColor"

    iget v6, p0, Lcom/google/android/gms/cast/TextTrackStyle;->edgeColor:I

    invoke-static {v6}, Lcom/google/android/gms/cast/TextTrackStyle;->zzg(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    :cond_7
    iget v1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->zzhi:I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v6, "NORMAL"

    const-string/jumbo v7, "windowType"

    if-eqz v1, :cond_a

    if-eq v1, v4, :cond_9

    if-eq v1, v5, :cond_8

    goto :goto_1

    .line 184
    :cond_8
    :try_start_2
    const-string v1, "ROUNDED_CORNERS"

    invoke-virtual {v0, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 182
    :cond_9
    invoke-virtual {v0, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 183
    goto :goto_1

    .line 180
    :cond_a
    invoke-virtual {v0, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    nop

    .line 185
    :goto_1
    iget v1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->windowColor:I

    if-eqz v1, :cond_b

    .line 186
    const-string/jumbo v1, "windowColor"

    iget v2, p0, Lcom/google/android/gms/cast/TextTrackStyle;->windowColor:I

    invoke-static {v2}, Lcom/google/android/gms/cast/TextTrackStyle;->zzg(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 187
    :cond_b
    iget v1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->zzhi:I

    if-ne v1, v5, :cond_c

    .line 188
    const-string/jumbo v1, "windowRoundedCornerRadius"

    iget v2, p0, Lcom/google/android/gms/cast/TextTrackStyle;->zzhj:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 189
    :cond_c
    iget-object v1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->zzhk:Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 190
    const-string v1, "fontFamily"

    iget-object v2, p0, Lcom/google/android/gms/cast/TextTrackStyle;->zzhk:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 191
    :cond_d
    iget v1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->zzhl:I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v2, "fontGenericFamily"

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 204
    :pswitch_0
    :try_start_3
    const-string v1, "SMALL_CAPITALS"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 202
    :pswitch_1
    const-string v1, "CURSIVE"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 203
    goto :goto_2

    .line 200
    :pswitch_2
    const-string v1, "CASUAL"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 201
    goto :goto_2

    .line 198
    :pswitch_3
    const-string v1, "MONOSPACED_SERIF"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 199
    goto :goto_2

    .line 196
    :pswitch_4
    const-string v1, "SERIF"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 197
    goto :goto_2

    .line 194
    :pswitch_5
    const-string v1, "MONOSPACED_SANS_SERIF"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 195
    goto :goto_2

    .line 192
    :pswitch_6
    const-string v1, "SANS_SERIF"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 193
    nop

    .line 205
    :goto_2
    iget v1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->fontStyle:I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    const-string v2, "fontStyle"

    if-eqz v1, :cond_11

    if-eq v1, v4, :cond_10

    if-eq v1, v5, :cond_f

    if-eq v1, v3, :cond_e

    goto :goto_3

    .line 212
    :cond_e
    :try_start_4
    const-string v1, "BOLD_ITALIC"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 210
    :cond_f
    const-string v1, "ITALIC"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 211
    goto :goto_3

    .line 208
    :cond_10
    const-string v1, "BOLD"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 209
    goto :goto_3

    .line 206
    :cond_11
    invoke-virtual {v0, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 207
    nop

    .line 213
    :goto_3
    iget-object v1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->zzp:Lorg/json/JSONObject;

    if-eqz v1, :cond_12

    .line 214
    const-string v1, "customData"

    iget-object v2, p0, Lcom/google/android/gms/cast/TextTrackStyle;->zzp:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    .line 215
    :cond_12
    goto :goto_4

    .line 216
    :catch_0
    move-exception v1

    .line 217
    :goto_4
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 255
    iget-object p2, p0, Lcom/google/android/gms/cast/TextTrackStyle;->zzp:Lorg/json/JSONObject;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lcom/google/android/gms/cast/TextTrackStyle;->zzj:Ljava/lang/String;

    .line 256
    nop

    .line 257
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    .line 258
    const/4 v0, 0x2

    .line 259
    invoke-virtual {p0}, Lcom/google/android/gms/cast/TextTrackStyle;->getFontScale()F

    move-result v1

    .line 260
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloat(Landroid/os/Parcel;IF)V

    .line 261
    const/4 v0, 0x3

    .line 262
    invoke-virtual {p0}, Lcom/google/android/gms/cast/TextTrackStyle;->getForegroundColor()I

    move-result v1

    .line 263
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 264
    const/4 v0, 0x4

    .line 265
    invoke-virtual {p0}, Lcom/google/android/gms/cast/TextTrackStyle;->getBackgroundColor()I

    move-result v1

    .line 266
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 267
    const/4 v0, 0x5

    .line 268
    invoke-virtual {p0}, Lcom/google/android/gms/cast/TextTrackStyle;->getEdgeType()I

    move-result v1

    .line 269
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 270
    const/4 v0, 0x6

    .line 271
    invoke-virtual {p0}, Lcom/google/android/gms/cast/TextTrackStyle;->getEdgeColor()I

    move-result v1

    .line 272
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 273
    const/4 v0, 0x7

    .line 274
    invoke-virtual {p0}, Lcom/google/android/gms/cast/TextTrackStyle;->getWindowType()I

    move-result v1

    .line 275
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 276
    const/16 v0, 0x8

    .line 277
    invoke-virtual {p0}, Lcom/google/android/gms/cast/TextTrackStyle;->getWindowColor()I

    move-result v1

    .line 278
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 279
    const/16 v0, 0x9

    .line 280
    invoke-virtual {p0}, Lcom/google/android/gms/cast/TextTrackStyle;->getWindowCornerRadius()I

    move-result v1

    .line 281
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 282
    const/16 v0, 0xa

    .line 283
    invoke-virtual {p0}, Lcom/google/android/gms/cast/TextTrackStyle;->getFontFamily()Ljava/lang/String;

    move-result-object v1

    .line 284
    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 285
    const/16 v0, 0xb

    .line 286
    invoke-virtual {p0}, Lcom/google/android/gms/cast/TextTrackStyle;->getFontGenericFamily()I

    move-result v1

    .line 287
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 288
    const/16 v0, 0xc

    .line 289
    invoke-virtual {p0}, Lcom/google/android/gms/cast/TextTrackStyle;->getFontStyle()I

    move-result v1

    .line 290
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 291
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->zzj:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 292
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 293
    return-void
.end method

.method public final zzf(Lorg/json/JSONObject;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 105
    const-string v0, "fontScale"

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->fontScale:F

    .line 106
    const-string v0, "foregroundColor"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/cast/TextTrackStyle;->zzi(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->foregroundColor:I

    .line 107
    const-string v0, "backgroundColor"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/cast/TextTrackStyle;->zzi(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->backgroundColor:I

    .line 108
    const-string v0, "edgeType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x4

    const-string v3, "NONE"

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-eqz v1, :cond_4

    .line 109
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    iput v6, p0, Lcom/google/android/gms/cast/TextTrackStyle;->edgeType:I

    goto :goto_0

    .line 112
    :cond_0
    const-string v1, "OUTLINE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    iput v5, p0, Lcom/google/android/gms/cast/TextTrackStyle;->edgeType:I

    goto :goto_0

    .line 114
    :cond_1
    const-string v1, "DROP_SHADOW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 115
    iput v7, p0, Lcom/google/android/gms/cast/TextTrackStyle;->edgeType:I

    goto :goto_0

    .line 116
    :cond_2
    const-string v1, "RAISED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 117
    iput v4, p0, Lcom/google/android/gms/cast/TextTrackStyle;->edgeType:I

    goto :goto_0

    .line 118
    :cond_3
    const-string v1, "DEPRESSED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 119
    iput v2, p0, Lcom/google/android/gms/cast/TextTrackStyle;->edgeType:I

    .line 120
    :cond_4
    :goto_0
    const-string v0, "edgeColor"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/cast/TextTrackStyle;->zzi(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->edgeColor:I

    .line 121
    const-string/jumbo v0, "windowType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const-string v8, "NORMAL"

    if-eqz v1, :cond_7

    .line 122
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 124
    iput v6, p0, Lcom/google/android/gms/cast/TextTrackStyle;->zzhi:I

    goto :goto_1

    .line 125
    :cond_5
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 126
    iput v5, p0, Lcom/google/android/gms/cast/TextTrackStyle;->zzhi:I

    goto :goto_1

    .line 127
    :cond_6
    const-string v1, "ROUNDED_CORNERS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 128
    iput v7, p0, Lcom/google/android/gms/cast/TextTrackStyle;->zzhi:I

    .line 129
    :cond_7
    :goto_1
    const-string/jumbo v0, "windowColor"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/cast/TextTrackStyle;->zzi(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->windowColor:I

    .line 130
    iget v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->zzhi:I

    if-ne v0, v7, :cond_8

    .line 131
    const-string/jumbo v0, "windowRoundedCornerRadius"

    invoke-virtual {p1, v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->zzhj:I

    .line 132
    :cond_8
    const/4 v0, 0x0

    const-string v1, "fontFamily"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->zzhk:Ljava/lang/String;

    .line 133
    const-string v0, "fontGenericFamily"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 134
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    const-string v1, "SANS_SERIF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 136
    iput v6, p0, Lcom/google/android/gms/cast/TextTrackStyle;->zzhl:I

    goto :goto_2

    .line 137
    :cond_9
    const-string v1, "MONOSPACED_SANS_SERIF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 138
    iput v5, p0, Lcom/google/android/gms/cast/TextTrackStyle;->zzhl:I

    goto :goto_2

    .line 139
    :cond_a
    const-string v1, "SERIF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 140
    iput v7, p0, Lcom/google/android/gms/cast/TextTrackStyle;->zzhl:I

    goto :goto_2

    .line 141
    :cond_b
    const-string v1, "MONOSPACED_SERIF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 142
    iput v4, p0, Lcom/google/android/gms/cast/TextTrackStyle;->zzhl:I

    goto :goto_2

    .line 143
    :cond_c
    const-string v1, "CASUAL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 144
    iput v2, p0, Lcom/google/android/gms/cast/TextTrackStyle;->zzhl:I

    goto :goto_2

    .line 145
    :cond_d
    const-string v1, "CURSIVE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 146
    const/4 v0, 0x5

    iput v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->zzhl:I

    goto :goto_2

    .line 147
    :cond_e
    const-string v1, "SMALL_CAPITALS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 148
    const/4 v0, 0x6

    iput v0, p0, Lcom/google/android/gms/cast/TextTrackStyle;->zzhl:I

    .line 149
    :cond_f
    :goto_2
    const-string v0, "fontStyle"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 150
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 152
    iput v6, p0, Lcom/google/android/gms/cast/TextTrackStyle;->fontStyle:I

    goto :goto_3

    .line 153
    :cond_10
    const-string v1, "BOLD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 154
    iput v5, p0, Lcom/google/android/gms/cast/TextTrackStyle;->fontStyle:I

    goto :goto_3

    .line 155
    :cond_11
    const-string v1, "ITALIC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 156
    iput v7, p0, Lcom/google/android/gms/cast/TextTrackStyle;->fontStyle:I

    goto :goto_3

    .line 157
    :cond_12
    const-string v1, "BOLD_ITALIC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 158
    iput v4, p0, Lcom/google/android/gms/cast/TextTrackStyle;->fontStyle:I

    .line 159
    :cond_13
    :goto_3
    const-string v0, "customData"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/cast/TextTrackStyle;->zzp:Lorg/json/JSONObject;

    .line 160
    return-void
.end method
