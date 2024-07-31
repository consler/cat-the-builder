.class public Lorg/apache/commons/lang3/math/NumberUtils;
.super Ljava/lang/Object;
.source "NumberUtils.java"


# static fields
.field public static final BYTE_MINUS_ONE:Ljava/lang/Byte;

.field public static final BYTE_ONE:Ljava/lang/Byte;

.field public static final BYTE_ZERO:Ljava/lang/Byte;

.field public static final DOUBLE_MINUS_ONE:Ljava/lang/Double;

.field public static final DOUBLE_ONE:Ljava/lang/Double;

.field public static final DOUBLE_ZERO:Ljava/lang/Double;

.field public static final FLOAT_MINUS_ONE:Ljava/lang/Float;

.field public static final FLOAT_ONE:Ljava/lang/Float;

.field public static final FLOAT_ZERO:Ljava/lang/Float;

.field public static final INTEGER_MINUS_ONE:Ljava/lang/Integer;

.field public static final INTEGER_ONE:Ljava/lang/Integer;

.field public static final INTEGER_TWO:Ljava/lang/Integer;

.field public static final INTEGER_ZERO:Ljava/lang/Integer;

.field public static final LONG_MINUS_ONE:Ljava/lang/Long;

.field public static final LONG_ONE:Ljava/lang/Long;

.field public static final LONG_ZERO:Ljava/lang/Long;

.field public static final SHORT_MINUS_ONE:Ljava/lang/Short;

.field public static final SHORT_ONE:Ljava/lang/Short;

.field public static final SHORT_ZERO:Ljava/lang/Short;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 35
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->LONG_ZERO:Ljava/lang/Long;

    .line 37
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->LONG_ONE:Ljava/lang/Long;

    .line 39
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->LONG_MINUS_ONE:Ljava/lang/Long;

    .line 41
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_ZERO:Ljava/lang/Integer;

    .line 43
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_ONE:Ljava/lang/Integer;

    .line 45
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_TWO:Ljava/lang/Integer;

    .line 47
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_MINUS_ONE:Ljava/lang/Integer;

    .line 49
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/lang3/math/NumberUtils;->SHORT_ZERO:Ljava/lang/Short;

    .line 51
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/lang3/math/NumberUtils;->SHORT_ONE:Ljava/lang/Short;

    .line 53
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/lang3/math/NumberUtils;->SHORT_MINUS_ONE:Ljava/lang/Short;

    .line 55
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->BYTE_ZERO:Ljava/lang/Byte;

    .line 57
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->BYTE_ONE:Ljava/lang/Byte;

    .line 59
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->BYTE_MINUS_ONE:Ljava/lang/Byte;

    .line 61
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->DOUBLE_ZERO:Ljava/lang/Double;

    .line 63
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->DOUBLE_ONE:Ljava/lang/Double;

    .line 65
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->DOUBLE_MINUS_ONE:Ljava/lang/Double;

    .line 67
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_ZERO:Ljava/lang/Float;

    .line 69
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_ONE:Ljava/lang/Float;

    .line 71
    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->FLOAT_MINUS_ONE:Ljava/lang/Float;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    return-void
.end method

.method public static compare(BB)I
    .locals 1
    .param p0, "x"    # B
    .param p1, "y"    # B

    .line 1823
    sub-int v0, p0, p1

    return v0
.end method

.method public static compare(II)I
    .locals 1
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 1772
    if-ne p0, p1, :cond_0

    .line 1773
    const/4 v0, 0x0

    return v0

    .line 1775
    :cond_0
    if-ge p0, p1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public static compare(JJ)I
    .locals 1
    .param p0, "x"    # J
    .param p2, "y"    # J

    .line 1789
    cmp-long v0, p0, p2

    if-nez v0, :cond_0

    .line 1790
    const/4 v0, 0x0

    return v0

    .line 1792
    :cond_0
    cmp-long v0, p0, p2

    if-gez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public static compare(SS)I
    .locals 1
    .param p0, "x"    # S
    .param p1, "y"    # S

    .line 1806
    if-ne p0, p1, :cond_0

    .line 1807
    const/4 v0, 0x0

    return v0

    .line 1809
    :cond_0
    if-ge p0, p1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public static createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .line 983
    if-nez p0, :cond_0

    .line 984
    const/4 v0, 0x0

    return-object v0

    .line 987
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 990
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 997
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 995
    :cond_1
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not a valid number."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 988
    :cond_2
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "A blank string is not a valid number"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .line 948
    if-nez p0, :cond_0

    .line 949
    const/4 v0, 0x0

    return-object v0

    .line 951
    :cond_0
    const/4 v0, 0x0

    .line 952
    .local v0, "pos":I
    const/16 v1, 0xa

    .line 953
    .local v1, "radix":I
    const/4 v2, 0x0

    .line 954
    .local v2, "negate":Z
    const-string v3, "-"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 955
    const/4 v2, 0x1

    .line 956
    const/4 v0, 0x1

    .line 958
    :cond_1
    const-string v3, "0x"

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "0X"

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 961
    :cond_2
    const-string v3, "#"

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 962
    const/16 v1, 0x10

    .line 963
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 964
    :cond_3
    const-string v3, "0"

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v4, v0, 0x1

    if-le v3, v4, :cond_5

    .line 965
    const/16 v1, 0x8

    .line 966
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 959
    :cond_4
    :goto_0
    const/16 v1, 0x10

    .line 960
    add-int/lit8 v0, v0, 0x2

    .line 969
    :cond_5
    :goto_1
    new-instance v3, Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 970
    .local v3, "value":Ljava/math/BigInteger;
    if-eqz v2, :cond_6

    invoke-virtual {v3}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v4

    goto :goto_2

    :cond_6
    move-object v4, v3

    :goto_2
    return-object v4
.end method

.method public static createDouble(Ljava/lang/String;)Ljava/lang/Double;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 894
    if-nez p0, :cond_0

    .line 895
    const/4 v0, 0x0

    return-object v0

    .line 897
    :cond_0
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public static createFloat(Ljava/lang/String;)Ljava/lang/Float;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 878
    if-nez p0, :cond_0

    .line 879
    const/4 v0, 0x0

    return-object v0

    .line 881
    :cond_0
    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public static createInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 912
    if-nez p0, :cond_0

    .line 913
    const/4 v0, 0x0

    return-object v0

    .line 916
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static createLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 931
    if-nez p0, :cond_0

    .line 932
    const/4 v0, 0x0

    return-object v0

    .line 934
    :cond_0
    invoke-static {p0}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static createNumber(Ljava/lang/String;)Ljava/lang/Number;
    .locals 18
    .param p0, "str"    # Ljava/lang/String;

    .line 651
    move-object/from16 v1, p0

    if-nez v1, :cond_0

    .line 652
    const/4 v0, 0x0

    return-object v0

    .line 654
    :cond_0
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 658
    const-string v2, "0x"

    const-string v3, "0X"

    const-string v4, "-0x"

    const-string v5, "-0X"

    const-string v6, "#"

    const-string v7, "-#"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 659
    .local v2, "hex_prefixes":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 660
    .local v0, "pfxLen":I
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, v2, v5

    .line 661
    .local v6, "pfx":Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 662
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    .line 663
    move v3, v0

    goto :goto_1

    .line 660
    .end local v6    # "pfx":Ljava/lang/String;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    move v3, v0

    .line 666
    .end local v0    # "pfxLen":I
    .local v3, "pfxLen":I
    :goto_1
    if-lez v3, :cond_8

    .line 667
    const/4 v0, 0x0

    .line 668
    .local v0, "firstSigDigit":C
    move v4, v3

    .local v4, "i":I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 669
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 670
    const/16 v5, 0x30

    if-ne v0, v5, :cond_3

    .line 671
    add-int/lit8 v3, v3, 0x1

    .line 668
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 676
    .end local v4    # "i":I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    .line 677
    .local v4, "hexDigits":I
    const/16 v5, 0x10

    if-gt v4, v5, :cond_7

    const/16 v6, 0x37

    if-ne v4, v5, :cond_4

    if-le v0, v6, :cond_4

    goto :goto_4

    .line 680
    :cond_4
    const/16 v5, 0x8

    if-gt v4, v5, :cond_6

    if-ne v4, v5, :cond_5

    if-le v0, v6, :cond_5

    goto :goto_3

    .line 683
    :cond_5
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    return-object v5

    .line 681
    :cond_6
    :goto_3
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    return-object v5

    .line 678
    :cond_7
    :goto_4
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v5

    return-object v5

    .line 685
    .end local v0    # "firstSigDigit":C
    .end local v4    # "hexDigits":I
    :cond_8
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v5, 0x1

    sub-int/2addr v0, v5

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 689
    .local v6, "lastChar":C
    const/16 v0, 0x2e

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 690
    .local v7, "decPos":I
    const/16 v8, 0x65

    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/16 v9, 0x45

    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v5

    .line 694
    .local v8, "expPos":I
    const-string v9, " is not a valid number."

    const/4 v10, -0x1

    if-le v7, v10, :cond_b

    .line 695
    if-le v8, v10, :cond_a

    .line 696
    if-lt v8, v7, :cond_9

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v11

    if-gt v8, v11, :cond_9

    .line 699
    add-int/lit8 v11, v7, 0x1

    invoke-virtual {v1, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .local v11, "dec":Ljava/lang/String;
    goto :goto_5

    .line 697
    .end local v11    # "dec":Ljava/lang/String;
    :cond_9
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 701
    :cond_a
    add-int/lit8 v11, v7, 0x1

    invoke-virtual {v1, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 703
    .restart local v11    # "dec":Ljava/lang/String;
    :goto_5
    invoke-static {v1, v7}, Lorg/apache/commons/lang3/math/NumberUtils;->getMantissa(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    .local v12, "mant":Ljava/lang/String;
    goto :goto_7

    .line 705
    .end local v11    # "dec":Ljava/lang/String;
    .end local v12    # "mant":Ljava/lang/String;
    :cond_b
    if-le v8, v10, :cond_d

    .line 706
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v11

    if-gt v8, v11, :cond_c

    .line 709
    invoke-static {v1, v8}, Lorg/apache/commons/lang3/math/NumberUtils;->getMantissa(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    move-object v12, v11

    .local v11, "mant":Ljava/lang/String;
    goto :goto_6

    .line 707
    .end local v11    # "mant":Ljava/lang/String;
    :cond_c
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 711
    :cond_d
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang3/math/NumberUtils;->getMantissa(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v12, v11

    .line 713
    .restart local v12    # "mant":Ljava/lang/String;
    :goto_6
    const/4 v11, 0x0

    .line 715
    .local v11, "dec":Ljava/lang/String;
    :goto_7
    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v13

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    if-nez v13, :cond_1b

    if-eq v6, v0, :cond_1b

    .line 716
    if-le v8, v10, :cond_e

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v5

    if-ge v8, v0, :cond_e

    .line 717
    add-int/lit8 v0, v8, 0x1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v5

    invoke-virtual {v1, v0, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .local v0, "exp":Ljava/lang/String;
    goto :goto_8

    .line 719
    .end local v0    # "exp":Ljava/lang/String;
    :cond_e
    const/4 v0, 0x0

    move-object v10, v0

    .line 722
    .local v10, "exp":Ljava/lang/String;
    :goto_8
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 723
    .local v13, "numeric":Ljava/lang/String;
    invoke-static {v12}, Lorg/apache/commons/lang3/math/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {v10}, Lorg/apache/commons/lang3/math/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v5

    goto :goto_9

    :cond_f
    move v0, v4

    :goto_9
    move/from16 v17, v0

    .line 724
    .local v17, "allZeros":Z
    const/16 v0, 0x44

    if-eq v6, v0, :cond_17

    const/16 v0, 0x46

    if-eq v6, v0, :cond_14

    const/16 v0, 0x4c

    if-eq v6, v0, :cond_10

    const/16 v0, 0x64

    if-eq v6, v0, :cond_17

    const/16 v0, 0x66

    if-eq v6, v0, :cond_14

    const/16 v0, 0x6c

    if-ne v6, v0, :cond_1a

    .line 727
    :cond_10
    if-nez v11, :cond_13

    if-nez v10, :cond_13

    .line 729
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {v13, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x2d

    if-ne v0, v4, :cond_11

    invoke-virtual {v13, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/math/NumberUtils;->isDigits(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    :cond_11
    invoke-static {v13}, Lorg/apache/commons/lang3/math/NumberUtils;->isDigits(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 731
    :cond_12
    :try_start_0
    invoke-static {v13}, Lorg/apache/commons/lang3/math/NumberUtils;->createLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 732
    :catch_0
    move-exception v0

    .line 735
    invoke-static {v13}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 738
    :cond_13
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 742
    :cond_14
    :try_start_1
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    .line 743
    .local v0, "f":Ljava/lang/Float;
    invoke-virtual {v0}, Ljava/lang/Float;->isInfinite()Z

    move-result v4

    if-nez v4, :cond_16

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    cmpl-float v4, v4, v14

    if-nez v4, :cond_15

    if-eqz v17, :cond_16

    .line 746
    :cond_15
    return-object v0

    .line 751
    .end local v0    # "f":Ljava/lang/Float;
    :cond_16
    goto :goto_a

    .line 749
    :catch_1
    move-exception v0

    .line 756
    :cond_17
    :goto_a
    :try_start_2
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 757
    .local v0, "d":Ljava/lang/Double;
    invoke-virtual {v0}, Ljava/lang/Double;->isInfinite()Z

    move-result v4

    if-nez v4, :cond_19

    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v4
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    float-to-double v4, v4

    cmpl-double v4, v4, v15

    if-nez v4, :cond_18

    if-eqz v17, :cond_19

    .line 758
    :cond_18
    return-object v0

    .line 762
    .end local v0    # "d":Ljava/lang/Double;
    :cond_19
    goto :goto_b

    .line 760
    :catch_2
    move-exception v0

    .line 764
    :goto_b
    :try_start_3
    invoke-static {v13}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    return-object v0

    .line 765
    :catch_3
    move-exception v0

    .line 770
    :cond_1a
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 776
    .end local v10    # "exp":Ljava/lang/String;
    .end local v13    # "numeric":Ljava/lang/String;
    .end local v17    # "allZeros":Z
    :cond_1b
    if-le v8, v10, :cond_1c

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v5

    if-ge v8, v0, :cond_1c

    .line 777
    add-int/lit8 v0, v8, 0x1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v1, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .local v0, "exp":Ljava/lang/String;
    goto :goto_c

    .line 779
    .end local v0    # "exp":Ljava/lang/String;
    :cond_1c
    const/4 v0, 0x0

    move-object v9, v0

    .line 781
    .local v9, "exp":Ljava/lang/String;
    :goto_c
    if-nez v11, :cond_1d

    if-nez v9, :cond_1d

    .line 784
    :try_start_4
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    return-object v0

    .line 785
    :catch_4
    move-exception v0

    .line 789
    :try_start_5
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    return-object v0

    .line 790
    :catch_5
    move-exception v0

    .line 793
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 797
    :cond_1d
    invoke-static {v12}, Lorg/apache/commons/lang3/math/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-static {v9}, Lorg/apache/commons/lang3/math/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    move v4, v5

    .line 799
    .local v4, "allZeros":Z
    :cond_1e
    :try_start_6
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    .line 800
    .local v0, "f":Ljava/lang/Float;
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    .line 801
    .local v5, "d":Ljava/lang/Double;
    invoke-virtual {v0}, Ljava/lang/Float;->isInfinite()Z

    move-result v10

    if-nez v10, :cond_20

    .line 802
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v10

    cmpl-float v10, v10, v14

    if-nez v10, :cond_1f

    if-eqz v4, :cond_20

    .line 803
    :cond_1f
    invoke-virtual {v0}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_20

    .line 804
    return-object v0

    .line 806
    :cond_20
    invoke-virtual {v5}, Ljava/lang/Double;->isInfinite()Z

    move-result v10

    if-nez v10, :cond_23

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    cmpl-double v10, v13, v15

    if-nez v10, :cond_21

    if-eqz v4, :cond_23

    .line 807
    :cond_21
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v10

    .line 808
    .local v10, "b":Ljava/math/BigDecimal;
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v13
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_6

    if-nez v13, :cond_22

    .line 809
    return-object v5

    .line 811
    :cond_22
    return-object v10

    .line 815
    .end local v0    # "f":Ljava/lang/Float;
    .end local v5    # "d":Ljava/lang/Double;
    .end local v10    # "b":Ljava/math/BigDecimal;
    :cond_23
    goto :goto_d

    .line 813
    :catch_6
    move-exception v0

    .line 816
    :goto_d
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 655
    .end local v2    # "hex_prefixes":[Ljava/lang/String;
    .end local v3    # "pfxLen":I
    .end local v4    # "allZeros":Z
    .end local v6    # "lastChar":C
    .end local v7    # "decPos":I
    .end local v8    # "expPos":I
    .end local v9    # "exp":Ljava/lang/String;
    .end local v11    # "dec":Ljava/lang/String;
    .end local v12    # "mant":Ljava/lang/String;
    :cond_24
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v2, "A blank string is not a valid number"

    invoke-direct {v0, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getMantissa(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 828
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/math/NumberUtils;->getMantissa(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getMantissa(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "stopPos"    # I

    .line 841
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 842
    .local v1, "firstChar":C
    const/4 v2, 0x1

    const/16 v3, 0x2d

    if-eq v1, v3, :cond_1

    const/16 v3, 0x2b

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v2

    .line 844
    .local v3, "hasSign":Z
    :goto_1
    if-eqz v3, :cond_2

    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0
.end method

.method private static isAllZeros(Ljava/lang/String;)Z
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .line 856
    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 857
    return v0

    .line 859
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 860
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-eq v2, v3, :cond_1

    .line 861
    const/4 v0, 0x0

    return v0

    .line 859
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 864
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public static isCreatable(Ljava/lang/String;)Z
    .locals 17
    .param p0, "str"    # Ljava/lang/String;

    .line 1599
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1600
    return v1

    .line 1602
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 1603
    .local v0, "chars":[C
    array-length v2, v0

    .line 1604
    .local v2, "sz":I
    const/4 v3, 0x0

    .line 1605
    .local v3, "hasExp":Z
    const/4 v4, 0x0

    .line 1606
    .local v4, "hasDecPoint":Z
    const/4 v5, 0x0

    .line 1607
    .local v5, "allowSigns":Z
    const/4 v6, 0x0

    .line 1609
    .local v6, "foundDigit":Z
    aget-char v7, v0, v1

    const/16 v8, 0x2b

    const/16 v9, 0x2d

    const/4 v10, 0x1

    if-eq v7, v9, :cond_2

    aget-char v7, v0, v1

    if-ne v7, v8, :cond_1

    goto :goto_0

    :cond_1
    move v7, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v7, v10

    .line 1610
    .local v7, "start":I
    :goto_1
    add-int/lit8 v11, v7, 0x1

    const/16 v12, 0x46

    const/16 v13, 0x66

    const/16 v14, 0x39

    const/16 v15, 0x2e

    const/16 v9, 0x30

    if-le v2, v11, :cond_e

    aget-char v11, v0, v7

    if-ne v11, v9, :cond_e

    move-object/from16 v11, p0

    invoke-static {v11, v15}, Lorg/apache/commons/lang3/StringUtils;->contains(Ljava/lang/CharSequence;I)Z

    move-result v16

    if-nez v16, :cond_f

    .line 1611
    add-int/lit8 v16, v7, 0x1

    aget-char v8, v0, v16

    const/16 v15, 0x78

    if-eq v8, v15, :cond_7

    add-int/lit8 v8, v7, 0x1

    aget-char v8, v0, v8

    const/16 v15, 0x58

    if-ne v8, v15, :cond_3

    goto :goto_4

    .line 1625
    :cond_3
    add-int/lit8 v8, v7, 0x1

    aget-char v8, v0, v8

    invoke-static {v8}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 1627
    add-int/lit8 v8, v7, 0x1

    .line 1628
    .local v8, "i":I
    :goto_2
    array-length v12, v0

    if-ge v8, v12, :cond_6

    .line 1629
    aget-char v12, v0, v8

    if-lt v12, v9, :cond_5

    aget-char v12, v0, v8

    const/16 v13, 0x37

    if-le v12, v13, :cond_4

    goto :goto_3

    .line 1628
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1630
    :cond_5
    :goto_3
    return v1

    .line 1633
    :cond_6
    return v10

    .line 1612
    .end local v8    # "i":I
    :cond_7
    :goto_4
    add-int/lit8 v8, v7, 0x2

    .line 1613
    .restart local v8    # "i":I
    if-ne v8, v2, :cond_8

    .line 1614
    return v1

    .line 1617
    :cond_8
    :goto_5
    array-length v15, v0

    if-ge v8, v15, :cond_d

    .line 1618
    aget-char v15, v0, v8

    if-lt v15, v9, :cond_9

    aget-char v15, v0, v8

    if-le v15, v14, :cond_b

    :cond_9
    aget-char v15, v0, v8

    const/16 v14, 0x61

    if-lt v15, v14, :cond_a

    aget-char v14, v0, v8

    if-le v14, v13, :cond_b

    :cond_a
    aget-char v14, v0, v8

    const/16 v15, 0x41

    if-lt v14, v15, :cond_c

    aget-char v14, v0, v8

    if-le v14, v12, :cond_b

    goto :goto_6

    .line 1617
    :cond_b
    add-int/lit8 v8, v8, 0x1

    const/16 v14, 0x39

    goto :goto_5

    .line 1621
    :cond_c
    :goto_6
    return v1

    .line 1624
    :cond_d
    return v10

    .line 1610
    .end local v8    # "i":I
    :cond_e
    move-object/from16 v11, p0

    .line 1636
    :cond_f
    add-int/lit8 v2, v2, -0x1

    .line 1638
    move v8, v7

    .line 1641
    .restart local v8    # "i":I
    :goto_7
    const/16 v14, 0x45

    const/16 v15, 0x65

    if-lt v8, v2, :cond_1e

    add-int/lit8 v12, v2, 0x1

    if-ge v8, v12, :cond_10

    if-eqz v5, :cond_10

    if-nez v6, :cond_10

    const/16 v12, 0x46

    goto :goto_b

    .line 1674
    :cond_10
    array-length v12, v0

    if-ge v8, v12, :cond_1c

    .line 1675
    aget-char v12, v0, v8

    if-lt v12, v9, :cond_11

    aget-char v9, v0, v8

    const/16 v12, 0x39

    if-gt v9, v12, :cond_11

    .line 1677
    return v10

    .line 1679
    :cond_11
    aget-char v9, v0, v8

    if-eq v9, v15, :cond_1b

    aget-char v9, v0, v8

    if-ne v9, v14, :cond_12

    goto :goto_a

    .line 1683
    :cond_12
    aget-char v9, v0, v8

    const/16 v12, 0x2e

    if-ne v9, v12, :cond_15

    .line 1684
    if-nez v4, :cond_14

    if-eqz v3, :cond_13

    goto :goto_8

    .line 1689
    :cond_13
    return v6

    .line 1686
    :cond_14
    :goto_8
    return v1

    .line 1691
    :cond_15
    if-nez v5, :cond_17

    aget-char v9, v0, v8

    const/16 v12, 0x64

    if-eq v9, v12, :cond_16

    aget-char v9, v0, v8

    const/16 v12, 0x44

    if-eq v9, v12, :cond_16

    aget-char v9, v0, v8

    if-eq v9, v13, :cond_16

    aget-char v9, v0, v8

    const/16 v12, 0x46

    if-ne v9, v12, :cond_17

    .line 1696
    :cond_16
    return v6

    .line 1698
    :cond_17
    aget-char v9, v0, v8

    const/16 v12, 0x6c

    if-eq v9, v12, :cond_19

    aget-char v9, v0, v8

    const/16 v12, 0x4c

    if-ne v9, v12, :cond_18

    goto :goto_9

    .line 1704
    :cond_18
    return v1

    .line 1701
    :cond_19
    :goto_9
    if-eqz v6, :cond_1a

    if-nez v3, :cond_1a

    if-nez v4, :cond_1a

    move v1, v10

    :cond_1a
    return v1

    .line 1681
    :cond_1b
    :goto_a
    return v1

    .line 1708
    :cond_1c
    if-nez v5, :cond_1d

    if-eqz v6, :cond_1d

    move v1, v10

    :cond_1d
    return v1

    .line 1642
    :cond_1e
    :goto_b
    aget-char v10, v0, v8

    if-lt v10, v9, :cond_1f

    aget-char v10, v0, v8

    const/16 v9, 0x39

    if-gt v10, v9, :cond_20

    .line 1643
    const/4 v6, 0x1

    .line 1644
    const/4 v5, 0x0

    const/16 v9, 0x2e

    const/16 v14, 0x2b

    const/16 v15, 0x2d

    goto :goto_f

    .line 1642
    :cond_1f
    const/16 v9, 0x39

    .line 1646
    :cond_20
    aget-char v10, v0, v8

    const/16 v9, 0x2e

    if-ne v10, v9, :cond_23

    .line 1647
    if-nez v4, :cond_22

    if-eqz v3, :cond_21

    goto :goto_c

    .line 1651
    :cond_21
    const/4 v4, 0x1

    const/16 v14, 0x2b

    const/16 v15, 0x2d

    goto :goto_f

    .line 1649
    :cond_22
    :goto_c
    return v1

    .line 1652
    :cond_23
    aget-char v10, v0, v8

    if-eq v10, v15, :cond_28

    aget-char v10, v0, v8

    if-ne v10, v14, :cond_24

    const/16 v14, 0x2b

    const/16 v15, 0x2d

    goto :goto_e

    .line 1663
    :cond_24
    aget-char v10, v0, v8

    const/16 v14, 0x2b

    if-eq v10, v14, :cond_26

    aget-char v10, v0, v8

    const/16 v15, 0x2d

    if-ne v10, v15, :cond_25

    goto :goto_d

    .line 1670
    :cond_25
    return v1

    .line 1663
    :cond_26
    const/16 v15, 0x2d

    .line 1664
    :goto_d
    if-nez v5, :cond_27

    .line 1665
    return v1

    .line 1667
    :cond_27
    const/4 v5, 0x0

    .line 1668
    const/4 v6, 0x0

    goto :goto_f

    .line 1652
    :cond_28
    const/16 v14, 0x2b

    const/16 v15, 0x2d

    .line 1654
    :goto_e
    if-eqz v3, :cond_29

    .line 1656
    return v1

    .line 1658
    :cond_29
    if-nez v6, :cond_2a

    .line 1659
    return v1

    .line 1661
    :cond_2a
    const/4 v3, 0x1

    .line 1662
    const/4 v5, 0x1

    .line 1672
    :goto_f
    add-int/lit8 v8, v8, 0x1

    const/16 v9, 0x30

    const/4 v10, 0x1

    goto/16 :goto_7
.end method

.method public static isDigits(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 1543
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isNumeric(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isNumber(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1573
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->isCreatable(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isParsable(Ljava/lang/String;)Z
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .line 1729
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1730
    return v1

    .line 1732
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x2e

    if-ne v0, v3, :cond_1

    .line 1733
    return v1

    .line 1735
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x2d

    if-ne v0, v3, :cond_3

    .line 1736
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 1737
    return v1

    .line 1739
    :cond_2
    invoke-static {p0, v2}, Lorg/apache/commons/lang3/math/NumberUtils;->withDecimalsParsing(Ljava/lang/String;I)Z

    move-result v0

    return v0

    .line 1741
    :cond_3
    invoke-static {p0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->withDecimalsParsing(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static max(BBB)B
    .locals 0
    .param p0, "a"    # B
    .param p1, "b"    # B
    .param p2, "c"    # B

    .line 1490
    if-le p1, p0, :cond_0

    .line 1491
    move p0, p1

    .line 1493
    :cond_0
    if-le p2, p0, :cond_1

    .line 1494
    move p0, p2

    .line 1496
    :cond_1
    return p0
.end method

.method public static varargs max([B)B
    .locals 3
    .param p0, "array"    # [B

    .line 1239
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 1242
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    .line 1243
    .local v0, "max":B
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 1244
    aget-byte v2, p0, v1

    if-le v2, v0, :cond_0

    .line 1245
    aget-byte v0, p0, v1

    .line 1243
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1249
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public static max(DDD)D
    .locals 2
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "c"    # D

    .line 1512
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static varargs max([D)D
    .locals 5
    .param p0, "array"    # [D

    .line 1264
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 1267
    const/4 v0, 0x0

    aget-wide v0, p0, v0

    .line 1268
    .local v0, "max":D
    const/4 v2, 0x1

    .local v2, "j":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 1269
    aget-wide v3, p0, v2

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1270
    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    return-wide v3

    .line 1272
    :cond_0
    aget-wide v3, p0, v2

    cmpl-double v3, v3, v0

    if-lez v3, :cond_1

    .line 1273
    aget-wide v0, p0, v2

    .line 1268
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1277
    .end local v2    # "j":I
    :cond_2
    return-wide v0
.end method

.method public static max(FFF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F

    .line 1528
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static varargs max([F)F
    .locals 3
    .param p0, "array"    # [F

    .line 1292
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 1295
    const/4 v0, 0x0

    aget v0, p0, v0

    .line 1296
    .local v0, "max":F
    const/4 v1, 0x1

    .local v1, "j":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 1297
    aget v2, p0, v1

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1298
    const/high16 v2, 0x7fc00000    # Float.NaN

    return v2

    .line 1300
    :cond_0
    aget v2, p0, v1

    cmpl-float v2, v2, v0

    if-lez v2, :cond_1

    .line 1301
    aget v0, p0, v1

    .line 1296
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1305
    .end local v1    # "j":I
    :cond_2
    return v0
.end method

.method public static max(III)I
    .locals 0
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "c"    # I

    .line 1454
    if-le p1, p0, :cond_0

    .line 1455
    move p0, p1

    .line 1457
    :cond_0
    if-le p2, p0, :cond_1

    .line 1458
    move p0, p2

    .line 1460
    :cond_1
    return p0
.end method

.method public static varargs max([I)I
    .locals 3
    .param p0, "array"    # [I

    .line 1191
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 1194
    const/4 v0, 0x0

    aget v0, p0, v0

    .line 1195
    .local v0, "max":I
    const/4 v1, 0x1

    .local v1, "j":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 1196
    aget v2, p0, v1

    if-le v2, v0, :cond_0

    .line 1197
    aget v0, p0, v1

    .line 1195
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1201
    .end local v1    # "j":I
    :cond_1
    return v0
.end method

.method public static max(JJJ)J
    .locals 1
    .param p0, "a"    # J
    .param p2, "b"    # J
    .param p4, "c"    # J

    .line 1436
    cmp-long v0, p2, p0

    if-lez v0, :cond_0

    .line 1437
    move-wide p0, p2

    .line 1439
    :cond_0
    cmp-long v0, p4, p0

    if-lez v0, :cond_1

    .line 1440
    move-wide p0, p4

    .line 1442
    :cond_1
    return-wide p0
.end method

.method public static varargs max([J)J
    .locals 5
    .param p0, "array"    # [J

    .line 1167
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 1170
    const/4 v0, 0x0

    aget-wide v0, p0, v0

    .line 1171
    .local v0, "max":J
    const/4 v2, 0x1

    .local v2, "j":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 1172
    aget-wide v3, p0, v2

    cmp-long v3, v3, v0

    if-lez v3, :cond_0

    .line 1173
    aget-wide v0, p0, v2

    .line 1171
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1177
    .end local v2    # "j":I
    :cond_1
    return-wide v0
.end method

.method public static max(SSS)S
    .locals 0
    .param p0, "a"    # S
    .param p1, "b"    # S
    .param p2, "c"    # S

    .line 1472
    if-le p1, p0, :cond_0

    .line 1473
    move p0, p1

    .line 1475
    :cond_0
    if-le p2, p0, :cond_1

    .line 1476
    move p0, p2

    .line 1478
    :cond_1
    return p0
.end method

.method public static varargs max([S)S
    .locals 3
    .param p0, "array"    # [S

    .line 1215
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 1218
    const/4 v0, 0x0

    aget-short v0, p0, v0

    .line 1219
    .local v0, "max":S
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 1220
    aget-short v2, p0, v1

    if-le v2, v0, :cond_0

    .line 1221
    aget-short v0, p0, v1

    .line 1219
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1225
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public static min(BBB)B
    .locals 0
    .param p0, "a"    # B
    .param p1, "b"    # B
    .param p2, "c"    # B

    .line 1384
    if-ge p1, p0, :cond_0

    .line 1385
    move p0, p1

    .line 1387
    :cond_0
    if-ge p2, p0, :cond_1

    .line 1388
    move p0, p2

    .line 1390
    :cond_1
    return p0
.end method

.method public static varargs min([B)B
    .locals 3
    .param p0, "array"    # [B

    .line 1085
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 1088
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    .line 1089
    .local v0, "min":B
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 1090
    aget-byte v2, p0, v1

    if-ge v2, v0, :cond_0

    .line 1091
    aget-byte v0, p0, v1

    .line 1089
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1095
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public static min(DDD)D
    .locals 2
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "c"    # D

    .line 1406
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static varargs min([D)D
    .locals 5
    .param p0, "array"    # [D

    .line 1110
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 1113
    const/4 v0, 0x0

    aget-wide v0, p0, v0

    .line 1114
    .local v0, "min":D
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 1115
    aget-wide v3, p0, v2

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1116
    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    return-wide v3

    .line 1118
    :cond_0
    aget-wide v3, p0, v2

    cmpg-double v3, v3, v0

    if-gez v3, :cond_1

    .line 1119
    aget-wide v0, p0, v2

    .line 1114
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1123
    .end local v2    # "i":I
    :cond_2
    return-wide v0
.end method

.method public static min(FFF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F

    .line 1422
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public static varargs min([F)F
    .locals 3
    .param p0, "array"    # [F

    .line 1138
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 1141
    const/4 v0, 0x0

    aget v0, p0, v0

    .line 1142
    .local v0, "min":F
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 1143
    aget v2, p0, v1

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1144
    const/high16 v2, 0x7fc00000    # Float.NaN

    return v2

    .line 1146
    :cond_0
    aget v2, p0, v1

    cmpg-float v2, v2, v0

    if-gez v2, :cond_1

    .line 1147
    aget v0, p0, v1

    .line 1142
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1151
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method public static min(III)I
    .locals 0
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "c"    # I

    .line 1348
    if-ge p1, p0, :cond_0

    .line 1349
    move p0, p1

    .line 1351
    :cond_0
    if-ge p2, p0, :cond_1

    .line 1352
    move p0, p2

    .line 1354
    :cond_1
    return p0
.end method

.method public static varargs min([I)I
    .locals 3
    .param p0, "array"    # [I

    .line 1037
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 1040
    const/4 v0, 0x0

    aget v0, p0, v0

    .line 1041
    .local v0, "min":I
    const/4 v1, 0x1

    .local v1, "j":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 1042
    aget v2, p0, v1

    if-ge v2, v0, :cond_0

    .line 1043
    aget v0, p0, v1

    .line 1041
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1047
    .end local v1    # "j":I
    :cond_1
    return v0
.end method

.method public static min(JJJ)J
    .locals 1
    .param p0, "a"    # J
    .param p2, "b"    # J
    .param p4, "c"    # J

    .line 1330
    cmp-long v0, p2, p0

    if-gez v0, :cond_0

    .line 1331
    move-wide p0, p2

    .line 1333
    :cond_0
    cmp-long v0, p4, p0

    if-gez v0, :cond_1

    .line 1334
    move-wide p0, p4

    .line 1336
    :cond_1
    return-wide p0
.end method

.method public static varargs min([J)J
    .locals 5
    .param p0, "array"    # [J

    .line 1013
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 1016
    const/4 v0, 0x0

    aget-wide v0, p0, v0

    .line 1017
    .local v0, "min":J
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 1018
    aget-wide v3, p0, v2

    cmp-long v3, v3, v0

    if-gez v3, :cond_0

    .line 1019
    aget-wide v0, p0, v2

    .line 1017
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1023
    .end local v2    # "i":I
    :cond_1
    return-wide v0
.end method

.method public static min(SSS)S
    .locals 0
    .param p0, "a"    # S
    .param p1, "b"    # S
    .param p2, "c"    # S

    .line 1366
    if-ge p1, p0, :cond_0

    .line 1367
    move p0, p1

    .line 1369
    :cond_0
    if-ge p2, p0, :cond_1

    .line 1370
    move p0, p2

    .line 1372
    :cond_1
    return p0
.end method

.method public static varargs min([S)S
    .locals 3
    .param p0, "array"    # [S

    .line 1061
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->validateArray(Ljava/lang/Object;)V

    .line 1064
    const/4 v0, 0x0

    aget-short v0, p0, v0

    .line 1065
    .local v0, "min":S
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 1066
    aget-short v2, p0, v1

    if-ge v2, v0, :cond_0

    .line 1067
    aget-short v0, p0, v1

    .line 1065
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1071
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public static toByte(Ljava/lang/String;)B
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 348
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/math/NumberUtils;->toByte(Ljava/lang/String;B)B

    move-result v0

    return v0
.end method

.method public static toByte(Ljava/lang/String;B)B
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # B

    .line 369
    if-nez p0, :cond_0

    .line 370
    return p1

    .line 373
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 374
    :catch_0
    move-exception v0

    .line 375
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    return p1
.end method

.method public static toDouble(Ljava/lang/String;)D
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .line 255
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->toDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static toDouble(Ljava/lang/String;D)D
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # D

    .line 278
    if-nez p0, :cond_0

    .line 279
    return-wide p1

    .line 282
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    return-wide p1
.end method

.method public static toDouble(Ljava/math/BigDecimal;)D
    .locals 2
    .param p0, "value"    # Ljava/math/BigDecimal;

    .line 305
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->toDouble(Ljava/math/BigDecimal;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static toDouble(Ljava/math/BigDecimal;D)D
    .locals 2
    .param p0, "value"    # Ljava/math/BigDecimal;
    .param p1, "defaultValue"    # D

    .line 326
    if-nez p0, :cond_0

    move-wide v0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public static toFloat(Ljava/lang/String;)F
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 203
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/math/NumberUtils;->toFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static toFloat(Ljava/lang/String;F)F
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # F

    .line 226
    if-nez p0, :cond_0

    .line 227
    return p1

    .line 230
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    return p1
.end method

.method public static toInt(Ljava/lang/String;)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 104
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/math/NumberUtils;->toInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static toInt(Ljava/lang/String;I)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .line 125
    if-nez p0, :cond_0

    .line 126
    return p1

    .line 129
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    return p1
.end method

.method public static toLong(Ljava/lang/String;)J
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .line 153
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->toLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static toLong(Ljava/lang/String;J)J
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # J

    .line 174
    if-nez p0, :cond_0

    .line 175
    return-wide p1

    .line 178
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    return-wide p1
.end method

.method public static toScaledBigDecimal(Ljava/lang/Double;)Ljava/math/BigDecimal;
    .locals 2
    .param p0, "value"    # Ljava/lang/Double;

    .line 518
    sget-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_TWO:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->toScaledBigDecimal(Ljava/lang/Double;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public static toScaledBigDecimal(Ljava/lang/Double;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;
    .locals 2
    .param p0, "value"    # Ljava/lang/Double;
    .param p1, "scale"    # I
    .param p2, "roundingMode"    # Ljava/math/RoundingMode;

    .line 534
    if-nez p0, :cond_0

    .line 535
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    return-object v0

    .line 537
    :cond_0
    nop

    .line 538
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    .line 537
    invoke-static {v0, p1, p2}, Lorg/apache/commons/lang3/math/NumberUtils;->toScaledBigDecimal(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public static toScaledBigDecimal(Ljava/lang/Float;)Ljava/math/BigDecimal;
    .locals 2
    .param p0, "value"    # Ljava/lang/Float;

    .line 479
    sget-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_TWO:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->toScaledBigDecimal(Ljava/lang/Float;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public static toScaledBigDecimal(Ljava/lang/Float;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;
    .locals 2
    .param p0, "value"    # Ljava/lang/Float;
    .param p1, "scale"    # I
    .param p2, "roundingMode"    # Ljava/math/RoundingMode;

    .line 495
    if-nez p0, :cond_0

    .line 496
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    return-object v0

    .line 498
    :cond_0
    nop

    .line 499
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    .line 498
    invoke-static {v0, p1, p2}, Lorg/apache/commons/lang3/math/NumberUtils;->toScaledBigDecimal(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public static toScaledBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .line 557
    sget-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_TWO:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->toScaledBigDecimal(Ljava/lang/String;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public static toScaledBigDecimal(Ljava/lang/String;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "scale"    # I
    .param p2, "roundingMode"    # Ljava/math/RoundingMode;

    .line 573
    if-nez p0, :cond_0

    .line 574
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    return-object v0

    .line 576
    :cond_0
    nop

    .line 577
    invoke-static {p0}, Lorg/apache/commons/lang3/math/NumberUtils;->createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 576
    invoke-static {v0, p1, p2}, Lorg/apache/commons/lang3/math/NumberUtils;->toScaledBigDecimal(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public static toScaledBigDecimal(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 2
    .param p0, "value"    # Ljava/math/BigDecimal;

    .line 441
    sget-object v0, Lorg/apache/commons/lang3/math/NumberUtils;->INTEGER_TWO:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/math/NumberUtils;->toScaledBigDecimal(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public static toScaledBigDecimal(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;
    .locals 1
    .param p0, "value"    # Ljava/math/BigDecimal;
    .param p1, "scale"    # I
    .param p2, "roundingMode"    # Ljava/math/RoundingMode;

    .line 457
    if-nez p0, :cond_0

    .line 458
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    return-object v0

    .line 460
    :cond_0
    nop

    .line 462
    if-nez p2, :cond_1

    sget-object v0, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    goto :goto_0

    :cond_1
    move-object v0, p2

    .line 460
    :goto_0
    invoke-virtual {p0, p1, v0}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public static toShort(Ljava/lang/String;)S
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 397
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/math/NumberUtils;->toShort(Ljava/lang/String;S)S

    move-result v0

    return v0
.end method

.method public static toShort(Ljava/lang/String;S)S
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # S

    .line 418
    if-nez p0, :cond_0

    .line 419
    return p1

    .line 422
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 423
    :catch_0
    move-exception v0

    .line 424
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    return p1
.end method

.method private static validateArray(Ljava/lang/Object;)V
    .locals 5
    .param p0, "array"    # Ljava/lang/Object;

    .line 1315
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "The Array must not be null"

    invoke-static {v2, v4, v3}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1316
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Array cannot be empty."

    invoke-static {v0, v2, v1}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1317
    return-void
.end method

.method private static withDecimalsParsing(Ljava/lang/String;I)Z
    .locals 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "beginIdx"    # I

    .line 1745
    const/4 v0, 0x0

    .line 1746
    .local v0, "decimalPoints":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_4

    .line 1747
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x2e

    const/4 v5, 0x0

    if-ne v2, v4, :cond_0

    move v2, v3

    goto :goto_1

    :cond_0
    move v2, v5

    .line 1748
    .local v2, "isDecimalPoint":Z
    :goto_1
    if-eqz v2, :cond_1

    .line 1749
    add-int/lit8 v0, v0, 0x1

    .line 1751
    :cond_1
    if-le v0, v3, :cond_2

    .line 1752
    return v5

    .line 1754
    :cond_2
    if-nez v2, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1755
    return v5

    .line 1746
    .end local v2    # "isDecimalPoint":Z
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1758
    .end local v1    # "i":I
    :cond_4
    return v3
.end method
