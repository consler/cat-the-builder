.class public Lcom/badlogic/gdx/utils/JsonValue;
.super Ljava/lang/Object;
.source "JsonValue.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;,
        Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;,
        Lcom/badlogic/gdx/utils/JsonValue$ValueType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/badlogic/gdx/utils/JsonValue;",
        ">;"
    }
.end annotation


# instance fields
.field public child:Lcom/badlogic/gdx/utils/JsonValue;

.field private doubleValue:D

.field private longValue:J

.field public name:Ljava/lang/String;

.field public next:Lcom/badlogic/gdx/utils/JsonValue;

.field public parent:Lcom/badlogic/gdx/utils/JsonValue;

.field public prev:Lcom/badlogic/gdx/utils/JsonValue;

.field public size:I

.field private stringValue:Ljava/lang/String;

.field private type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;


# direct methods
.method public constructor <init>(D)V
    .locals 1
    .param p1, "value"    # D

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/utils/JsonValue;->set(DLjava/lang/String;)V

    .line 63
    return-void
.end method

.method public constructor <init>(DLjava/lang/String;)V
    .locals 0
    .param p1, "value"    # D
    .param p3, "stringValue"    # Ljava/lang/String;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/JsonValue;->set(DLjava/lang/String;)V

    .line 71
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "value"    # J

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/utils/JsonValue;->set(JLjava/lang/String;)V

    .line 67
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 0
    .param p1, "value"    # J
    .param p3, "stringValue"    # Ljava/lang/String;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/JsonValue;->set(JLjava/lang/String;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/JsonValue$ValueType;)V
    .locals 0
    .param p1, "type"    # Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->set(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->set(Z)V

    .line 79
    return-void
.end method

.method private static indent(ILcom/badlogic/gdx/utils/StringBuilder;)V
    .locals 2
    .param p0, "count"    # I
    .param p1, "buffer"    # Lcom/badlogic/gdx/utils/StringBuilder;

    .line 1170
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 1171
    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 1170
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1172
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private static indent(ILjava/io/Writer;)V
    .locals 2
    .param p0, "count"    # I
    .param p1, "buffer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1175
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 1176
    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 1175
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1177
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private static isFlat(Lcom/badlogic/gdx/utils/JsonValue;)Z
    .locals 2
    .param p0, "object"    # Lcom/badlogic/gdx/utils/JsonValue;

    .line 1158
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_0
    if-eqz v0, :cond_2

    .line 1159
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->isObject()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->isArray()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 1158
    :cond_0
    iget-object v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_0

    .line 1159
    :cond_1
    :goto_1
    const/4 v1, 0x0

    return v1

    .line 1160
    .end local v0    # "child":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private static isNumeric(Lcom/badlogic/gdx/utils/JsonValue;)Z
    .locals 2
    .param p0, "object"    # Lcom/badlogic/gdx/utils/JsonValue;

    .line 1164
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_0
    if-eqz v0, :cond_1

    .line 1165
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->isNumber()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    .line 1164
    :cond_0
    iget-object v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_0

    .line 1166
    .end local v0    # "child":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private json(Lcom/badlogic/gdx/utils/JsonValue;Lcom/badlogic/gdx/utils/StringBuilder;Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V
    .locals 6
    .param p1, "object"    # Lcom/badlogic/gdx/utils/JsonValue;
    .param p2, "buffer"    # Lcom/badlogic/gdx/utils/StringBuilder;
    .param p3, "outputType"    # Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    .line 958
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isObject()Z

    move-result v0

    const/16 v1, 0x2c

    if-eqz v0, :cond_3

    .line 959
    iget-object v0, p1, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    if-nez v0, :cond_0

    .line 960
    const-string/jumbo v0, "{}"

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto/16 :goto_3

    .line 962
    :cond_0
    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/StringBuilder;->length()I

    move-result v0

    .line 964
    .local v0, "start":I
    const/16 v2, 0x7b

    invoke-virtual {p2, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 965
    const/4 v2, 0x0

    .line 966
    .local v2, "i":I
    iget-object v3, p1, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v3, "child":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_0
    if-eqz v3, :cond_2

    .line 967
    iget-object v4, v3, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {p3, v4}, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->quoteName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 968
    const/16 v4, 0x3a

    invoke-virtual {p2, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 969
    invoke-direct {p0, v3, p2, p3}, Lcom/badlogic/gdx/utils/JsonValue;->json(Lcom/badlogic/gdx/utils/JsonValue;Lcom/badlogic/gdx/utils/StringBuilder;Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V

    .line 970
    iget-object v4, v3, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    if-eqz v4, :cond_1

    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 966
    :cond_1
    iget-object v3, v3, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_0

    .line 972
    .end local v3    # "child":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_2
    nop

    .line 974
    .end local v2    # "i":I
    const/16 v1, 0x7d

    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 975
    .end local v0    # "start":I
    goto/16 :goto_3

    .line 976
    :cond_3
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isArray()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 977
    iget-object v0, p1, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    if-nez v0, :cond_4

    .line 978
    const-string v0, "[]"

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto/16 :goto_3

    .line 980
    :cond_4
    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/StringBuilder;->length()I

    move-result v0

    .line 982
    .restart local v0    # "start":I
    const/16 v2, 0x5b

    invoke-virtual {p2, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 983
    iget-object v2, p1, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v2, "child":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_1
    if-eqz v2, :cond_6

    .line 984
    invoke-direct {p0, v2, p2, p3}, Lcom/badlogic/gdx/utils/JsonValue;->json(Lcom/badlogic/gdx/utils/JsonValue;Lcom/badlogic/gdx/utils/StringBuilder;Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V

    .line 985
    iget-object v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    if-eqz v3, :cond_5

    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 983
    :cond_5
    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_1

    .line 989
    .end local v2    # "child":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_6
    const/16 v1, 0x5d

    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 990
    .end local v0    # "start":I
    goto :goto_3

    .line 991
    :cond_7
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isString()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 992
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->quoteValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_3

    .line 993
    :cond_8
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isDouble()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 994
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asDouble()D

    move-result-wide v0

    .line 995
    .local v0, "doubleValue":D
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asLong()J

    move-result-wide v2

    .line 996
    .local v2, "longValue":J
    long-to-double v4, v2

    cmpl-double v4, v0, v4

    if-nez v4, :cond_9

    long-to-double v4, v2

    goto :goto_2

    :cond_9
    move-wide v4, v0

    :goto_2
    invoke-virtual {p2, v4, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(D)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 997
    .end local v0    # "doubleValue":D
    .end local v2    # "longValue":J
    goto :goto_3

    :cond_a
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isLong()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 998
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asLong()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(J)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_3

    .line 999
    :cond_b
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isBoolean()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1000
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asBoolean()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Z)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_3

    .line 1001
    :cond_c
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isNull()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1002
    const-string v0, "null"

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 1005
    :goto_3
    return-void

    .line 1004
    :cond_d
    new-instance v0, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown object type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private prettyPrint(Lcom/badlogic/gdx/utils/JsonValue;Lcom/badlogic/gdx/utils/StringBuilder;ILcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;)V
    .locals 10
    .param p1, "object"    # Lcom/badlogic/gdx/utils/JsonValue;
    .param p2, "buffer"    # Lcom/badlogic/gdx/utils/StringBuilder;
    .param p3, "indent"    # I
    .param p4, "settings"    # Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;

    .line 1026
    iget-object v0, p4, Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;->outputType:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    .line 1027
    .local v0, "outputType":Lcom/badlogic/gdx/utils/JsonWriter$OutputType;
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isObject()Z

    move-result v1

    const/16 v2, 0xa

    const/16 v3, 0x20

    const/16 v4, 0x2c

    const/4 v5, 0x1

    if-eqz v1, :cond_9

    .line 1028
    iget-object v1, p1, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    if-nez v1, :cond_0

    .line 1029
    const-string/jumbo v1, "{}"

    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto/16 :goto_a

    .line 1031
    :cond_0
    invoke-static {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isFlat(Lcom/badlogic/gdx/utils/JsonValue;)Z

    move-result v1

    xor-int/2addr v1, v5

    .line 1032
    .local v1, "newLines":Z
    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/StringBuilder;->length()I

    move-result v5

    .line 1035
    .local v5, "start":I
    :goto_0
    if-eqz v1, :cond_1

    const-string/jumbo v6, "{\n"

    goto :goto_1

    :cond_1
    const-string/jumbo v6, "{ "

    :goto_1
    invoke-virtual {p2, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 1036
    const/4 v6, 0x0

    .line 1037
    .local v6, "i":I
    iget-object v7, p1, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v7, "child":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_2
    if-eqz v7, :cond_7

    .line 1038
    if-eqz v1, :cond_2

    invoke-static {p3, p2}, Lcom/badlogic/gdx/utils/JsonValue;->indent(ILcom/badlogic/gdx/utils/StringBuilder;)V

    .line 1039
    :cond_2
    iget-object v8, v7, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->quoteName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 1040
    const-string v8, ": "

    invoke-virtual {p2, v8}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 1041
    add-int/lit8 v8, p3, 0x1

    invoke-direct {p0, v7, p2, v8, p4}, Lcom/badlogic/gdx/utils/JsonValue;->prettyPrint(Lcom/badlogic/gdx/utils/JsonValue;Lcom/badlogic/gdx/utils/StringBuilder;ILcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;)V

    .line 1042
    if-eqz v1, :cond_3

    sget-object v8, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->minimal:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    if-eq v0, v8, :cond_4

    :cond_3
    iget-object v8, v7, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    if-eqz v8, :cond_4

    invoke-virtual {p2, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 1043
    :cond_4
    if-eqz v1, :cond_5

    move v8, v2

    goto :goto_3

    :cond_5
    move v8, v3

    :goto_3
    invoke-virtual {p2, v8}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 1044
    if-nez v1, :cond_6

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/StringBuilder;->length()I

    move-result v8

    sub-int/2addr v8, v5

    iget v9, p4, Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;->singleLineColumns:I

    if-le v8, v9, :cond_6

    .line 1045
    invoke-virtual {p2, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    .line 1046
    const/4 v1, 0x1

    .line 1047
    goto :goto_0

    .line 1037
    :cond_6
    iget-object v7, v7, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_2

    .line 1050
    .end local v7    # "child":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_7
    nop

    .line 1052
    .end local v6    # "i":I
    if-eqz v1, :cond_8

    add-int/lit8 v2, p3, -0x1

    invoke-static {v2, p2}, Lcom/badlogic/gdx/utils/JsonValue;->indent(ILcom/badlogic/gdx/utils/StringBuilder;)V

    .line 1053
    :cond_8
    const/16 v2, 0x7d

    invoke-virtual {p2, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 1054
    .end local v1    # "newLines":Z
    .end local v5    # "start":I
    goto/16 :goto_a

    .line 1055
    :cond_9
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isArray()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1056
    iget-object v1, p1, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    if-nez v1, :cond_a

    .line 1057
    const-string v1, "[]"

    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto/16 :goto_a

    .line 1059
    :cond_a
    invoke-static {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isFlat(Lcom/badlogic/gdx/utils/JsonValue;)Z

    move-result v1

    xor-int/2addr v1, v5

    .line 1060
    .restart local v1    # "newLines":Z
    iget-boolean v6, p4, Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;->wrapNumericArrays:Z

    if-nez v6, :cond_c

    invoke-static {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isNumeric(Lcom/badlogic/gdx/utils/JsonValue;)Z

    move-result v6

    if-nez v6, :cond_b

    goto :goto_4

    :cond_b
    const/4 v5, 0x0

    .line 1061
    .local v5, "wrap":Z
    :cond_c
    :goto_4
    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/StringBuilder;->length()I

    move-result v6

    .line 1064
    .local v6, "start":I
    :goto_5
    if-eqz v1, :cond_d

    const-string v7, "[\n"

    goto :goto_6

    :cond_d
    const-string v7, "[ "

    :goto_6
    invoke-virtual {p2, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 1065
    iget-object v7, p1, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .restart local v7    # "child":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_7
    if-eqz v7, :cond_13

    .line 1066
    if-eqz v1, :cond_e

    invoke-static {p3, p2}, Lcom/badlogic/gdx/utils/JsonValue;->indent(ILcom/badlogic/gdx/utils/StringBuilder;)V

    .line 1067
    :cond_e
    add-int/lit8 v8, p3, 0x1

    invoke-direct {p0, v7, p2, v8, p4}, Lcom/badlogic/gdx/utils/JsonValue;->prettyPrint(Lcom/badlogic/gdx/utils/JsonValue;Lcom/badlogic/gdx/utils/StringBuilder;ILcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;)V

    .line 1068
    if-eqz v1, :cond_f

    sget-object v8, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->minimal:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    if-eq v0, v8, :cond_10

    :cond_f
    iget-object v8, v7, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    if-eqz v8, :cond_10

    invoke-virtual {p2, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 1069
    :cond_10
    if-eqz v1, :cond_11

    move v8, v2

    goto :goto_8

    :cond_11
    move v8, v3

    :goto_8
    invoke-virtual {p2, v8}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 1070
    if-eqz v5, :cond_12

    if-nez v1, :cond_12

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/StringBuilder;->length()I

    move-result v8

    sub-int/2addr v8, v6

    iget v9, p4, Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;->singleLineColumns:I

    if-le v8, v9, :cond_12

    .line 1071
    invoke-virtual {p2, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    .line 1072
    const/4 v1, 0x1

    .line 1073
    goto :goto_5

    .line 1065
    :cond_12
    iget-object v7, v7, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_7

    .line 1076
    .end local v7    # "child":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_13
    nop

    .line 1078
    if-eqz v1, :cond_14

    add-int/lit8 v2, p3, -0x1

    invoke-static {v2, p2}, Lcom/badlogic/gdx/utils/JsonValue;->indent(ILcom/badlogic/gdx/utils/StringBuilder;)V

    .line 1079
    :cond_14
    const/16 v2, 0x5d

    invoke-virtual {p2, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 1080
    .end local v1    # "newLines":Z
    .end local v5    # "wrap":Z
    .end local v6    # "start":I
    goto :goto_a

    .line 1081
    :cond_15
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isString()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1082
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->quoteValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_a

    .line 1083
    :cond_16
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isDouble()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1084
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asDouble()D

    move-result-wide v1

    .line 1085
    .local v1, "doubleValue":D
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asLong()J

    move-result-wide v3

    .line 1086
    .local v3, "longValue":J
    long-to-double v5, v3

    cmpl-double v5, v1, v5

    if-nez v5, :cond_17

    long-to-double v5, v3

    goto :goto_9

    :cond_17
    move-wide v5, v1

    :goto_9
    invoke-virtual {p2, v5, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(D)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 1087
    .end local v1    # "doubleValue":D
    .end local v3    # "longValue":J
    goto :goto_a

    :cond_18
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isLong()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1088
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asLong()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(J)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_a

    .line 1089
    :cond_19
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isBoolean()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1090
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asBoolean()Z

    move-result v1

    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Z)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_a

    .line 1091
    :cond_1a
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isNull()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1092
    const-string v1, "null"

    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 1095
    :goto_a
    return-void

    .line 1094
    :cond_1b
    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown object type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private prettyPrint(Lcom/badlogic/gdx/utils/JsonValue;Ljava/io/Writer;ILcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;)V
    .locals 8
    .param p1, "object"    # Lcom/badlogic/gdx/utils/JsonValue;
    .param p2, "writer"    # Ljava/io/Writer;
    .param p3, "indent"    # I
    .param p4, "settings"    # Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1106
    iget-object v0, p4, Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;->outputType:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    .line 1107
    .local v0, "outputType":Lcom/badlogic/gdx/utils/JsonWriter$OutputType;
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isObject()Z

    move-result v1

    const/16 v2, 0xa

    const/16 v3, 0x20

    const/16 v4, 0x2c

    const/4 v5, 0x1

    if-eqz v1, :cond_a

    .line 1108
    iget-object v1, p1, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    if-nez v1, :cond_0

    .line 1109
    const-string/jumbo v1, "{}"

    invoke-virtual {p2, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto/16 :goto_8

    .line 1111
    :cond_0
    invoke-static {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isFlat(Lcom/badlogic/gdx/utils/JsonValue;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p1, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    const/4 v6, 0x6

    if-le v1, v6, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :cond_2
    :goto_0
    move v1, v5

    .line 1112
    .local v1, "newLines":Z
    if-eqz v1, :cond_3

    const-string/jumbo v5, "{\n"

    goto :goto_1

    :cond_3
    const-string/jumbo v5, "{ "

    :goto_1
    invoke-virtual {p2, v5}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 1113
    const/4 v5, 0x0

    .line 1114
    .local v5, "i":I
    iget-object v6, p1, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v6, "child":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_2
    if-eqz v6, :cond_8

    .line 1115
    if-eqz v1, :cond_4

    invoke-static {p3, p2}, Lcom/badlogic/gdx/utils/JsonValue;->indent(ILjava/io/Writer;)V

    .line 1116
    :cond_4
    iget-object v7, v6, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->quoteName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 1117
    const-string v7, ": "

    invoke-virtual {p2, v7}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 1118
    add-int/lit8 v7, p3, 0x1

    invoke-direct {p0, v6, p2, v7, p4}, Lcom/badlogic/gdx/utils/JsonValue;->prettyPrint(Lcom/badlogic/gdx/utils/JsonValue;Ljava/io/Writer;ILcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;)V

    .line 1119
    if-eqz v1, :cond_5

    sget-object v7, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->minimal:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    if-eq v0, v7, :cond_6

    :cond_5
    iget-object v7, v6, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    if-eqz v7, :cond_6

    invoke-virtual {p2, v4}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 1120
    :cond_6
    if-eqz v1, :cond_7

    move v7, v2

    goto :goto_3

    :cond_7
    move v7, v3

    :goto_3
    invoke-virtual {p2, v7}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 1114
    iget-object v6, v6, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_2

    .line 1122
    .end local v6    # "child":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_8
    if-eqz v1, :cond_9

    add-int/lit8 v2, p3, -0x1

    invoke-static {v2, p2}, Lcom/badlogic/gdx/utils/JsonValue;->indent(ILjava/io/Writer;)V

    .line 1123
    :cond_9
    const/16 v2, 0x7d

    invoke-virtual {p2, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 1124
    .end local v1    # "newLines":Z
    .end local v5    # "i":I
    goto/16 :goto_8

    .line 1125
    :cond_a
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isArray()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1126
    iget-object v1, p1, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    if-nez v1, :cond_b

    .line 1127
    const-string v1, "[]"

    invoke-virtual {p2, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto/16 :goto_8

    .line 1129
    :cond_b
    invoke-static {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isFlat(Lcom/badlogic/gdx/utils/JsonValue;)Z

    move-result v1

    xor-int/2addr v1, v5

    .line 1130
    .restart local v1    # "newLines":Z
    if-eqz v1, :cond_c

    const-string v5, "[\n"

    goto :goto_4

    :cond_c
    const-string v5, "[ "

    :goto_4
    invoke-virtual {p2, v5}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 1131
    const/4 v5, 0x0

    .line 1132
    .restart local v5    # "i":I
    iget-object v6, p1, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .restart local v6    # "child":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_5
    if-eqz v6, :cond_11

    .line 1133
    if-eqz v1, :cond_d

    invoke-static {p3, p2}, Lcom/badlogic/gdx/utils/JsonValue;->indent(ILjava/io/Writer;)V

    .line 1134
    :cond_d
    add-int/lit8 v7, p3, 0x1

    invoke-direct {p0, v6, p2, v7, p4}, Lcom/badlogic/gdx/utils/JsonValue;->prettyPrint(Lcom/badlogic/gdx/utils/JsonValue;Ljava/io/Writer;ILcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;)V

    .line 1135
    if-eqz v1, :cond_e

    sget-object v7, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->minimal:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    if-eq v0, v7, :cond_f

    :cond_e
    iget-object v7, v6, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    if-eqz v7, :cond_f

    invoke-virtual {p2, v4}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 1136
    :cond_f
    if-eqz v1, :cond_10

    move v7, v2

    goto :goto_6

    :cond_10
    move v7, v3

    :goto_6
    invoke-virtual {p2, v7}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 1132
    iget-object v6, v6, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_5

    .line 1138
    .end local v6    # "child":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_11
    if-eqz v1, :cond_12

    add-int/lit8 v2, p3, -0x1

    invoke-static {v2, p2}, Lcom/badlogic/gdx/utils/JsonValue;->indent(ILjava/io/Writer;)V

    .line 1139
    :cond_12
    const/16 v2, 0x5d

    invoke-virtual {p2, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 1140
    .end local v1    # "newLines":Z
    .end local v5    # "i":I
    goto :goto_8

    .line 1141
    :cond_13
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isString()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1142
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->quoteValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto :goto_8

    .line 1143
    :cond_14
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isDouble()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1144
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asDouble()D

    move-result-wide v1

    .line 1145
    .local v1, "doubleValue":D
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asLong()J

    move-result-wide v3

    .line 1146
    .local v3, "longValue":J
    long-to-double v5, v3

    cmpl-double v5, v1, v5

    if-nez v5, :cond_15

    long-to-double v5, v3

    goto :goto_7

    :cond_15
    move-wide v5, v1

    :goto_7
    invoke-static {v5, v6}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 1147
    .end local v1    # "doubleValue":D
    .end local v3    # "longValue":J
    goto :goto_8

    :cond_16
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isLong()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1148
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto :goto_8

    .line 1149
    :cond_17
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isBoolean()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1150
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->asBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto :goto_8

    .line 1151
    :cond_18
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/JsonValue;->isNull()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1152
    const-string v1, "null"

    invoke-virtual {p2, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 1155
    :goto_8
    return-void

    .line 1154
    :cond_19
    new-instance v1, Lcom/badlogic/gdx/utils/SerializationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown object type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/SerializationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public addChild(Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 2
    .param p1, "value"    # Lcom/badlogic/gdx/utils/JsonValue;

    .line 888
    iput-object p0, p1, Lcom/badlogic/gdx/utils/JsonValue;->parent:Lcom/badlogic/gdx/utils/JsonValue;

    .line 889
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .line 890
    .local v0, "current":Lcom/badlogic/gdx/utils/JsonValue;
    if-nez v0, :cond_0

    .line 891
    iput-object p1, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .line 901
    return-void

    .line 894
    :cond_0
    :goto_0
    iget-object v1, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    if-nez v1, :cond_1

    .line 895
    iput-object p1, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    .line 896
    return-void

    .line 898
    :cond_1
    iget-object v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_0
.end method

.method public addChild(Ljava/lang/String;Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Lcom/badlogic/gdx/utils/JsonValue;

    .line 881
    if-eqz p1, :cond_0

    .line 882
    iput-object p1, p2, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    .line 883
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/utils/JsonValue;->addChild(Lcom/badlogic/gdx/utils/JsonValue;)V

    .line 884
    return-void

    .line 881
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asBoolean()Z
    .locals 8

    .line 265
    sget-object v0, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    const-wide/16 v4, 0x0

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 273
    iget-wide v6, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    cmp-long v0, v6, v4

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    return v1

    .line 275
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value cannot be converted to boolean: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_2
    iget-wide v6, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    cmp-long v0, v6, v4

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    return v1

    .line 269
    :cond_4
    iget-wide v4, p0, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    const-wide/16 v6, 0x0

    cmpl-double v0, v4, v6

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    move v1, v3

    :goto_2
    return v1

    .line 267
    :cond_6
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public asBooleanArray()[Z
    .locals 11

    .line 477
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_8

    .line 478
    iget v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    new-array v0, v0, [Z

    .line 479
    .local v0, "array":[Z
    const/4 v1, 0x0

    .line 480
    .local v1, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v2, "value":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_0
    if-eqz v2, :cond_7

    .line 482
    sget-object v3, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v4, v2, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_6

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eq v3, v5, :cond_4

    const/4 v5, 0x3

    const-wide/16 v7, 0x0

    if-eq v3, v5, :cond_2

    const/4 v5, 0x4

    if-ne v3, v5, :cond_1

    .line 493
    iget-wide v9, v2, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    cmp-long v3, v9, v7

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    move v4, v6

    :goto_1
    move v3, v4

    .line 494
    .local v3, "v":Z
    goto :goto_4

    .line 496
    .end local v3    # "v":Z
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Value cannot be converted to boolean: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 490
    :cond_2
    iget-wide v9, v2, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    cmp-long v3, v9, v7

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    move v4, v6

    :goto_2
    move v3, v4

    .line 491
    .restart local v3    # "v":Z
    goto :goto_4

    .line 487
    .end local v3    # "v":Z
    :cond_4
    iget-wide v7, v2, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    const-wide/16 v9, 0x0

    cmpl-double v3, v7, v9

    if-nez v3, :cond_5

    goto :goto_3

    :cond_5
    move v4, v6

    :goto_3
    move v3, v4

    .line 488
    .restart local v3    # "v":Z
    goto :goto_4

    .line 484
    .end local v3    # "v":Z
    :cond_6
    iget-object v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 485
    .restart local v3    # "v":Z
    nop

    .line 498
    :goto_4
    aput-boolean v3, v0, v1

    .line 480
    .end local v3    # "v":Z
    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 500
    .end local v2    # "value":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_7
    return-object v0

    .line 477
    .end local v0    # "array":[Z
    .end local v1    # "i":I
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value is not an array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asByte()B
    .locals 6

    .line 281
    sget-object v0, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 289
    iget-wide v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 291
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value cannot be converted to byte: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_2
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    long-to-int v0, v0

    int-to-byte v0, v0

    return v0

    .line 285
    :cond_3
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    double-to-int v0, v0

    int-to-byte v0, v0

    return v0

    .line 283
    :cond_4
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    return v0
.end method

.method public asByteArray()[B
    .locals 9

    .line 506
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_6

    .line 507
    iget v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    new-array v0, v0, [B

    .line 508
    .local v0, "array":[B
    const/4 v1, 0x0

    .line 509
    .local v1, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v2, "value":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_0
    if-eqz v2, :cond_5

    .line 511
    sget-object v3, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v4, v2, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    const/4 v5, 0x2

    if-eq v3, v5, :cond_3

    const/4 v5, 0x3

    if-eq v3, v5, :cond_2

    const/4 v5, 0x4

    if-ne v3, v5, :cond_1

    .line 522
    iget-wide v5, v2, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    move v3, v4

    .line 523
    .local v3, "v":B
    goto :goto_2

    .line 525
    .end local v3    # "v":B
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Value cannot be converted to byte: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 519
    :cond_2
    iget-wide v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    long-to-int v3, v3

    int-to-byte v3, v3

    .line 520
    .restart local v3    # "v":B
    goto :goto_2

    .line 516
    .end local v3    # "v":B
    :cond_3
    iget-wide v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    double-to-int v3, v3

    int-to-byte v3, v3

    .line 517
    .restart local v3    # "v":B
    goto :goto_2

    .line 513
    .end local v3    # "v":B
    :cond_4
    iget-object v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v3

    .line 514
    .restart local v3    # "v":B
    nop

    .line 527
    :goto_2
    aput-byte v3, v0, v1

    .line 509
    .end local v3    # "v":B
    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 529
    .end local v2    # "value":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_5
    return-object v0

    .line 506
    .end local v0    # "array":[B
    .end local v1    # "i":I
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value is not an array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asChar()C
    .locals 7

    .line 313
    sget-object v0, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    .line 321
    iget-wide v3, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 323
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value cannot be converted to char: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 319
    :cond_2
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    long-to-int v0, v0

    int-to-char v0, v0

    return v0

    .line 317
    :cond_3
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    double-to-int v0, v0

    int-to-char v0, v0

    return v0

    .line 315
    :cond_4
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_1
    return v2
.end method

.method public asCharArray()[C
    .locals 10

    .line 564
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_7

    .line 565
    iget v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    new-array v0, v0, [C

    .line 566
    .local v0, "array":[C
    const/4 v1, 0x0

    .line 567
    .local v1, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v2, "value":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_0
    if-eqz v2, :cond_6

    .line 569
    sget-object v3, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v4, v2, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v3, v5, :cond_4

    const/4 v6, 0x2

    if-eq v3, v6, :cond_3

    const/4 v6, 0x3

    if-eq v3, v6, :cond_2

    const/4 v6, 0x4

    if-ne v3, v6, :cond_1

    .line 580
    iget-wide v6, v2, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-eqz v3, :cond_0

    move v4, v5

    :cond_0
    move v3, v4

    .line 581
    .local v3, "v":C
    goto :goto_2

    .line 583
    .end local v3    # "v":C
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Value cannot be converted to char: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 577
    :cond_2
    iget-wide v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    long-to-int v3, v3

    int-to-char v3, v3

    .line 578
    .restart local v3    # "v":C
    goto :goto_2

    .line 574
    .end local v3    # "v":C
    :cond_3
    iget-wide v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    double-to-int v3, v3

    int-to-char v3, v3

    .line 575
    .restart local v3    # "v":C
    goto :goto_2

    .line 571
    .end local v3    # "v":C
    :cond_4
    iget-object v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    iget-object v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_1
    move v3, v4

    .line 572
    .restart local v3    # "v":C
    nop

    .line 585
    :goto_2
    aput-char v3, v0, v1

    .line 567
    .end local v3    # "v":C
    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 587
    .end local v2    # "value":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_6
    return-object v0

    .line 564
    .end local v0    # "array":[C
    .end local v1    # "i":I
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value is not an array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asDouble()D
    .locals 4

    .line 217
    sget-object v0, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 225
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    .line 227
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value cannot be converted to double: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_2
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    long-to-double v0, v0

    return-wide v0

    .line 221
    :cond_3
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    return-wide v0

    .line 219
    :cond_4
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public asDoubleArray()[D
    .locals 7

    .line 390
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_6

    .line 391
    iget v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    new-array v0, v0, [D

    .line 392
    .local v0, "array":[D
    const/4 v1, 0x0

    .line 393
    .local v1, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v2, "value":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_0
    if-eqz v2, :cond_5

    .line 395
    sget-object v3, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v4, v2, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 406
    iget-wide v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    goto :goto_1

    :cond_0
    const-wide/16 v3, 0x0

    .line 407
    .local v3, "v":D
    :goto_1
    goto :goto_2

    .line 409
    .end local v3    # "v":D
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Value cannot be converted to double: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 403
    :cond_2
    iget-wide v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    long-to-double v3, v3

    .line 404
    .restart local v3    # "v":D
    goto :goto_2

    .line 400
    .end local v3    # "v":D
    :cond_3
    iget-wide v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    .line 401
    .restart local v3    # "v":D
    goto :goto_2

    .line 397
    .end local v3    # "v":D
    :cond_4
    iget-object v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 398
    .restart local v3    # "v":D
    nop

    .line 411
    :goto_2
    aput-wide v3, v0, v1

    .line 393
    .end local v3    # "v":D
    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 413
    .end local v2    # "value":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_5
    return-object v0

    .line 390
    .end local v0    # "array":[D
    .end local v1    # "i":I
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value is not an array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asFloat()F
    .locals 4

    .line 201
    sget-object v0, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 209
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 211
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value cannot be converted to float: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_2
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    long-to-float v0, v0

    return v0

    .line 205
    :cond_3
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    double-to-float v0, v0

    return v0

    .line 203
    :cond_4
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public asFloatArray()[F
    .locals 7

    .line 361
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_6

    .line 362
    iget v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    new-array v0, v0, [F

    .line 363
    .local v0, "array":[F
    const/4 v1, 0x0

    .line 364
    .local v1, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v2, "value":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_0
    if-eqz v2, :cond_5

    .line 366
    sget-object v3, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v4, v2, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 377
    iget-wide v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 378
    .local v3, "v":F
    :goto_1
    goto :goto_2

    .line 380
    .end local v3    # "v":F
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Value cannot be converted to float: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 374
    :cond_2
    iget-wide v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    long-to-float v3, v3

    .line 375
    .restart local v3    # "v":F
    goto :goto_2

    .line 371
    .end local v3    # "v":F
    :cond_3
    iget-wide v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    double-to-float v3, v3

    .line 372
    .restart local v3    # "v":F
    goto :goto_2

    .line 368
    .end local v3    # "v":F
    :cond_4
    iget-object v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 369
    .restart local v3    # "v":F
    nop

    .line 382
    :goto_2
    aput v3, v0, v1

    .line 364
    .end local v3    # "v":F
    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 384
    .end local v2    # "value":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_5
    return-object v0

    .line 361
    .end local v0    # "array":[F
    .end local v1    # "i":I
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value is not an array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asInt()I
    .locals 6

    .line 249
    sget-object v0, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 257
    iget-wide v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 259
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value cannot be converted to int: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_2
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    long-to-int v0, v0

    return v0

    .line 253
    :cond_3
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    double-to-int v0, v0

    return v0

    .line 251
    :cond_4
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public asIntArray()[I
    .locals 9

    .line 448
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_6

    .line 449
    iget v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    new-array v0, v0, [I

    .line 450
    .local v0, "array":[I
    const/4 v1, 0x0

    .line 451
    .local v1, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v2, "value":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_0
    if-eqz v2, :cond_5

    .line 453
    sget-object v3, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v4, v2, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    const/4 v5, 0x2

    if-eq v3, v5, :cond_3

    const/4 v5, 0x3

    if-eq v3, v5, :cond_2

    const/4 v5, 0x4

    if-ne v3, v5, :cond_1

    .line 464
    iget-wide v5, v2, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    move v3, v4

    .line 465
    .local v3, "v":I
    goto :goto_2

    .line 467
    .end local v3    # "v":I
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Value cannot be converted to int: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 461
    :cond_2
    iget-wide v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    long-to-int v3, v3

    .line 462
    .restart local v3    # "v":I
    goto :goto_2

    .line 458
    .end local v3    # "v":I
    :cond_3
    iget-wide v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    double-to-int v3, v3

    .line 459
    .restart local v3    # "v":I
    goto :goto_2

    .line 455
    .end local v3    # "v":I
    :cond_4
    iget-object v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 456
    .restart local v3    # "v":I
    nop

    .line 469
    :goto_2
    aput v3, v0, v1

    .line 451
    .end local v3    # "v":I
    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 471
    .end local v2    # "value":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_5
    return-object v0

    .line 448
    .end local v0    # "array":[I
    .end local v1    # "i":I
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value is not an array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asLong()J
    .locals 4

    .line 233
    sget-object v0, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 241
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const-wide/16 v2, 0x1

    :cond_0
    return-wide v2

    .line 243
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value cannot be converted to long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_2
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    return-wide v0

    .line 237
    :cond_3
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    double-to-long v0, v0

    return-wide v0

    .line 235
    :cond_4
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public asLongArray()[J
    .locals 7

    .line 419
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_6

    .line 420
    iget v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    new-array v0, v0, [J

    .line 421
    .local v0, "array":[J
    const/4 v1, 0x0

    .line 422
    .local v1, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v2, "value":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_0
    if-eqz v2, :cond_5

    .line 424
    sget-object v3, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v4, v2, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 435
    iget-wide v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    const-wide/16 v5, 0x1

    :cond_0
    move-wide v3, v5

    .line 436
    .local v3, "v":J
    goto :goto_1

    .line 438
    .end local v3    # "v":J
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Value cannot be converted to long: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 432
    :cond_2
    iget-wide v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    .line 433
    .restart local v3    # "v":J
    goto :goto_1

    .line 429
    .end local v3    # "v":J
    :cond_3
    iget-wide v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    double-to-long v3, v3

    .line 430
    .restart local v3    # "v":J
    goto :goto_1

    .line 426
    .end local v3    # "v":J
    :cond_4
    iget-object v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 427
    .restart local v3    # "v":J
    nop

    .line 440
    :goto_1
    aput-wide v3, v0, v1

    .line 422
    .end local v3    # "v":J
    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 442
    .end local v2    # "value":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_5
    return-object v0

    .line 419
    .end local v0    # "array":[J
    .end local v1    # "i":I
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value is not an array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asShort()S
    .locals 6

    .line 297
    sget-object v0, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 305
    iget-wide v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 307
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value cannot be converted to short: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_2
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    long-to-int v0, v0

    int-to-short v0, v0

    return v0

    .line 301
    :cond_3
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    double-to-int v0, v0

    int-to-short v0, v0

    return v0

    .line 299
    :cond_4
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    return v0
.end method

.method public asShortArray()[S
    .locals 9

    .line 535
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_6

    .line 536
    iget v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    new-array v0, v0, [S

    .line 537
    .local v0, "array":[S
    const/4 v1, 0x0

    .line 538
    .local v1, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v2, "value":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_0
    if-eqz v2, :cond_5

    .line 540
    sget-object v3, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v4, v2, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    const/4 v5, 0x2

    if-eq v3, v5, :cond_3

    const/4 v5, 0x3

    if-eq v3, v5, :cond_2

    const/4 v5, 0x4

    if-ne v3, v5, :cond_1

    .line 551
    iget-wide v5, v2, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    move v3, v4

    .line 552
    .local v3, "v":S
    goto :goto_2

    .line 554
    .end local v3    # "v":S
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Value cannot be converted to short: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 548
    :cond_2
    iget-wide v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    long-to-int v3, v3

    int-to-short v3, v3

    .line 549
    .restart local v3    # "v":S
    goto :goto_2

    .line 545
    .end local v3    # "v":S
    :cond_3
    iget-wide v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    double-to-int v3, v3

    int-to-short v3, v3

    .line 546
    .restart local v3    # "v":S
    goto :goto_2

    .line 542
    .end local v3    # "v":S
    :cond_4
    iget-object v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v3

    .line 543
    .restart local v3    # "v":S
    nop

    .line 556
    :goto_2
    aput-short v3, v0, v1

    .line 538
    .end local v3    # "v":S
    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 558
    .end local v2    # "value":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_5
    return-object v0

    .line 535
    .end local v0    # "array":[S
    .end local v1    # "i":I
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value is not an array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asString()Ljava/lang/String;
    .locals 4

    .line 183
    sget-object v0, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 193
    const/4 v0, 0x0

    return-object v0

    .line 195
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value cannot be converted to string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_1
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    const-string/jumbo v0, "true"

    goto :goto_0

    :cond_2
    const-string v0, "false"

    :goto_0
    return-object v0

    .line 189
    :cond_3
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    .line 187
    :cond_5
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    iget-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0

    .line 185
    :cond_7
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    return-object v0
.end method

.method public asStringArray()[Ljava/lang/String;
    .locals 7

    .line 329
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_9

    .line 330
    iget v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    new-array v0, v0, [Ljava/lang/String;

    .line 331
    .local v0, "array":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 332
    .local v1, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v2, "value":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_0
    if-eqz v2, :cond_8

    .line 334
    sget-object v3, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v4, v2, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_7

    const/4 v4, 0x2

    if-eq v3, v4, :cond_5

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 348
    const/4 v3, 0x0

    .line 349
    .local v3, "v":Ljava/lang/String;
    goto :goto_4

    .line 351
    .end local v3    # "v":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Value cannot be converted to string: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 345
    :cond_1
    iget-wide v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    const-string/jumbo v3, "true"

    goto :goto_1

    :cond_2
    const-string v3, "false"

    .line 346
    .restart local v3    # "v":Ljava/lang/String;
    :goto_1
    goto :goto_4

    .line 342
    .end local v3    # "v":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    iget-wide v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    .line 343
    .restart local v3    # "v":Ljava/lang/String;
    :goto_2
    goto :goto_4

    .line 339
    .end local v3    # "v":Ljava/lang/String;
    :cond_5
    iget-object v3, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    if-eqz v3, :cond_6

    goto :goto_3

    :cond_6
    iget-wide v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    invoke-static {v3, v4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v3

    .line 340
    .restart local v3    # "v":Ljava/lang/String;
    :goto_3
    goto :goto_4

    .line 336
    .end local v3    # "v":Ljava/lang/String;
    :cond_7
    iget-object v3, v2, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    .line 337
    .restart local v3    # "v":Ljava/lang/String;
    nop

    .line 353
    :goto_4
    aput-object v3, v0, v1

    .line 332
    .end local v3    # "v":Ljava/lang/String;
    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 355
    .end local v2    # "value":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_8
    return-object v0

    .line 329
    .end local v0    # "array":[Ljava/lang/String;
    .end local v1    # "i":I
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value is not an array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public child()Lcom/badlogic/gdx/utils/JsonValue;
    .locals 1

    .line 876
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    return-object v0
.end method

.method public get(I)Lcom/badlogic/gdx/utils/JsonValue;
    .locals 1
    .param p1, "index"    # I

    .line 85
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .line 86
    .local v0, "current":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_0
    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    .line 87
    add-int/lit8 p1, p1, -0x1

    .line 88
    iget-object v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_0

    .line 90
    :cond_0
    return-object v0
.end method

.method public get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .line 97
    .local v0, "current":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 98
    :cond_0
    iget-object v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_0

    .line 99
    :cond_1
    return-object v0
.end method

.method public getBoolean(I)Z
    .locals 4
    .param p1, "index"    # I

    .line 772
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(I)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 773
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v0, :cond_0

    .line 774
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asBoolean()Z

    move-result v1

    return v1

    .line 773
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Indexed value not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 700
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 701
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v0, :cond_0

    .line 702
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asBoolean()Z

    move-result v1

    return v1

    .line 701
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Named value not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 635
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 636
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->isValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->isNull()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asBoolean()Z

    move-result v1

    goto :goto_1

    :cond_1
    :goto_0
    move v1, p2

    :goto_1
    return v1
.end method

.method public getByte(I)B
    .locals 4
    .param p1, "index"    # I

    .line 780
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(I)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 781
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v0, :cond_0

    .line 782
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asByte()B

    move-result v1

    return v1

    .line 781
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Indexed value not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getByte(Ljava/lang/String;)B
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 708
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 709
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v0, :cond_0

    .line 710
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asByte()B

    move-result v1

    return v1

    .line 709
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Named value not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getByte(Ljava/lang/String;B)B
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # B

    .line 641
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 642
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->isValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->isNull()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asByte()B

    move-result v1

    goto :goto_1

    :cond_1
    :goto_0
    move v1, p2

    :goto_1
    return v1
.end method

.method public getChar(I)C
    .locals 4
    .param p1, "index"    # I

    .line 796
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(I)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 797
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v0, :cond_0

    .line 798
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asChar()C

    move-result v1

    return v1

    .line 797
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Indexed value not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getChar(Ljava/lang/String;)C
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 724
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 725
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v0, :cond_0

    .line 726
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asChar()C

    move-result v1

    return v1

    .line 725
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Named value not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getChar(Ljava/lang/String;C)C
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # C

    .line 653
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 654
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->isValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->isNull()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asChar()C

    move-result v1

    goto :goto_1

    :cond_1
    :goto_0
    move v1, p2

    :goto_1
    return v1
.end method

.method public getChild(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 598
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 599
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    :goto_0
    return-object v1
.end method

.method public getDouble(I)D
    .locals 4
    .param p1, "index"    # I

    .line 748
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(I)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 749
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v0, :cond_0

    .line 750
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asDouble()D

    move-result-wide v1

    return-wide v1

    .line 749
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Indexed value not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 676
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 677
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v0, :cond_0

    .line 678
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asDouble()D

    move-result-wide v1

    return-wide v1

    .line 677
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Named value not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getDouble(Ljava/lang/String;D)D
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D

    .line 617
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 618
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->isValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->isNull()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asDouble()D

    move-result-wide v1

    goto :goto_1

    :cond_1
    :goto_0
    move-wide v1, p2

    :goto_1
    return-wide v1
.end method

.method public getFloat(I)F
    .locals 4
    .param p1, "index"    # I

    .line 740
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(I)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 741
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v0, :cond_0

    .line 742
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asFloat()F

    move-result v1

    return v1

    .line 741
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Indexed value not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 668
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 669
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v0, :cond_0

    .line 670
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asFloat()F

    move-result v1

    return v1

    .line 669
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Named value not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # F

    .line 611
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 612
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->isValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->isNull()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asFloat()F

    move-result v1

    goto :goto_1

    :cond_1
    :goto_0
    move v1, p2

    :goto_1
    return v1
.end method

.method public getInt(I)I
    .locals 4
    .param p1, "index"    # I

    .line 764
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(I)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 765
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v0, :cond_0

    .line 766
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I

    move-result v1

    return v1

    .line 765
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Indexed value not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 692
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 693
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v0, :cond_0

    .line 694
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I

    move-result v1

    return v1

    .line 693
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Named value not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 629
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 630
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->isValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->isNull()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asInt()I

    move-result v1

    goto :goto_1

    :cond_1
    :goto_0
    move v1, p2

    :goto_1
    return v1
.end method

.method public getLong(I)J
    .locals 4
    .param p1, "index"    # I

    .line 756
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(I)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 757
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v0, :cond_0

    .line 758
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asLong()J

    move-result-wide v1

    return-wide v1

    .line 757
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Indexed value not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 684
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 685
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v0, :cond_0

    .line 686
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asLong()J

    move-result-wide v1

    return-wide v1

    .line 685
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Named value not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .line 623
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 624
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->isValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->isNull()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asLong()J

    move-result-wide v1

    goto :goto_1

    :cond_1
    :goto_0
    move-wide v1, p2

    :goto_1
    return-wide v1
.end method

.method public getShort(I)S
    .locals 4
    .param p1, "index"    # I

    .line 788
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(I)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 789
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v0, :cond_0

    .line 790
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asShort()S

    move-result v1

    return v1

    .line 789
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Indexed value not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getShort(Ljava/lang/String;)S
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 716
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 717
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v0, :cond_0

    .line 718
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asShort()S

    move-result v1

    return v1

    .line 717
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Named value not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getShort(Ljava/lang/String;S)S
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # S

    .line 647
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 648
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->isValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->isNull()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asShort()S

    move-result v1

    goto :goto_1

    :cond_1
    :goto_0
    move v1, p2

    :goto_1
    return v1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 4
    .param p1, "index"    # I

    .line 732
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(I)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 733
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v0, :cond_0

    .line 734
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 733
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Indexed value not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 660
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 661
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v0, :cond_0

    .line 662
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 661
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Named value not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 605
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 606
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->isValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->isNull()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    :goto_0
    move-object v1, p2

    :goto_1
    return-object v1
.end method

.method public has(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 104
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasChild(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 592
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->getChild(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isArray()Z
    .locals 2

    .line 811
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBoolean()Z
    .locals 2

    .line 836
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->booleanValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDouble()Z
    .locals 2

    .line 828
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->doubleValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 170
    iget v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLong()Z
    .locals 2

    .line 832
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->longValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNull()Z
    .locals 2

    .line 840
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->nullValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNumber()Z
    .locals 2

    .line 824
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->doubleValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->longValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isObject()Z
    .locals 2

    .line 815
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->object:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isString()Z
    .locals 2

    .line 819
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->stringValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isValue()Z
    .locals 3

    .line 845
    sget-object v0, Lcom/badlogic/gdx/utils/JsonValue$1;->$SwitchMap$com$badlogic$gdx$utils$JsonValue$ValueType:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    .line 853
    const/4 v0, 0x0

    return v0

    .line 851
    :cond_0
    return v1
.end method

.method public iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;
    .locals 1

    .line 1184
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;-><init>(Lcom/badlogic/gdx/utils/JsonValue;)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object v0

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 859
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    return-object v0
.end method

.method public next()Lcom/badlogic/gdx/utils/JsonValue;
    .locals 1

    .line 906
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    return-object v0
.end method

.method public notEmpty()Z
    .locals 1

    .line 165
    iget v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public parent()Lcom/badlogic/gdx/utils/JsonValue;
    .locals 1

    .line 870
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->parent:Lcom/badlogic/gdx/utils/JsonValue;

    return-object v0
.end method

.method public prettyPrint(Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;)Ljava/lang/String;
    .locals 2
    .param p1, "settings"    # Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;

    .line 1020
    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 1021
    .local v0, "buffer":Lcom/badlogic/gdx/utils/StringBuilder;
    const/4 v1, 0x0

    invoke-direct {p0, p0, v0, v1, p1}, Lcom/badlogic/gdx/utils/JsonValue;->prettyPrint(Lcom/badlogic/gdx/utils/JsonValue;Lcom/badlogic/gdx/utils/StringBuilder;ILcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;)V

    .line 1022
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public prettyPrint(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;I)Ljava/lang/String;
    .locals 2
    .param p1, "outputType"    # Lcom/badlogic/gdx/utils/JsonWriter$OutputType;
    .param p2, "singleLineColumns"    # I

    .line 1013
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;-><init>()V

    .line 1014
    .local v0, "settings":Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;
    iput-object p1, v0, Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;->outputType:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    .line 1015
    iput p2, v0, Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;->singleLineColumns:I

    .line 1016
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/JsonValue;->prettyPrint(Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public prettyPrint(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;Ljava/io/Writer;)V
    .locals 2
    .param p1, "outputType"    # Lcom/badlogic/gdx/utils/JsonWriter$OutputType;
    .param p2, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1100
    new-instance v0, Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;-><init>()V

    .line 1101
    .local v0, "settings":Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;
    iput-object p1, v0, Lcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;->outputType:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    .line 1102
    const/4 v1, 0x0

    invoke-direct {p0, p0, p2, v1, v0}, Lcom/badlogic/gdx/utils/JsonValue;->prettyPrint(Lcom/badlogic/gdx/utils/JsonValue;Ljava/io/Writer;ILcom/badlogic/gdx/utils/JsonValue$PrettyPrintSettings;)V

    .line 1103
    return-void
.end method

.method public prev()Lcom/badlogic/gdx/utils/JsonValue;
    .locals 1

    .line 916
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    return-object v0
.end method

.method public remove(I)Lcom/badlogic/gdx/utils/JsonValue;
    .locals 3
    .param p1, "index"    # I

    .line 134
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(I)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 135
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 136
    :cond_0
    iget-object v2, v0, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    if-nez v2, :cond_1

    .line 137
    iget-object v2, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    iput-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .line 138
    if-eqz v2, :cond_2

    iput-object v1, v2, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_0

    .line 140
    :cond_1
    iget-object v1, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    iput-object v1, v2, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    .line 141
    iget-object v1, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    if-eqz v1, :cond_2

    iput-object v2, v1, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    .line 143
    :cond_2
    :goto_0
    iget v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    .line 144
    return-object v0
.end method

.method public remove(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 150
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object v0

    .line 151
    .local v0, "child":Lcom/badlogic/gdx/utils/JsonValue;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 152
    :cond_0
    iget-object v2, v0, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    if-nez v2, :cond_1

    .line 153
    iget-object v2, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    iput-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .line 154
    if-eqz v2, :cond_2

    iput-object v1, v2, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_0

    .line 156
    :cond_1
    iget-object v1, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    iput-object v1, v2, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    .line 157
    iget-object v1, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    if-eqz v1, :cond_2

    iput-object v2, v1, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    .line 159
    :cond_2
    :goto_0
    iget v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    .line 160
    return-object v0
.end method

.method public require(I)Lcom/badlogic/gdx/utils/JsonValue;
    .locals 4
    .param p1, "index"    # I

    .line 111
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .line 112
    .local v0, "current":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_0
    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    .line 113
    add-int/lit8 p1, p1, -0x1

    .line 114
    iget-object v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_0

    .line 116
    :cond_0
    if-eqz v0, :cond_1

    .line 117
    return-object v0

    .line 116
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Child not found with index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public require(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 123
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .line 124
    .local v0, "current":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 125
    :cond_0
    iget-object v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    goto :goto_0

    .line 126
    :cond_1
    if-eqz v0, :cond_2

    .line 127
    return-object v0

    .line 126
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Child not found with name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public set(DLjava/lang/String;)V
    .locals 2
    .param p1, "value"    # D
    .param p3, "stringValue"    # Ljava/lang/String;

    .line 931
    iput-wide p1, p0, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    .line 932
    double-to-long v0, p1

    iput-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    .line 933
    iput-object p3, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    .line 934
    sget-object v0, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->doubleValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    .line 935
    return-void
.end method

.method public set(JLjava/lang/String;)V
    .locals 2
    .param p1, "value"    # J
    .param p3, "stringValue"    # Ljava/lang/String;

    .line 939
    iput-wide p1, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    .line 940
    long-to-double v0, p1

    iput-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->doubleValue:D

    .line 941
    iput-object p3, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    .line 942
    sget-object v0, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->longValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    .line 943
    return-void
.end method

.method public set(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 925
    iput-object p1, p0, Lcom/badlogic/gdx/utils/JsonValue;->stringValue:Ljava/lang/String;

    .line 926
    if-nez p1, :cond_0

    sget-object v0, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->nullValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->stringValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    :goto_0
    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    .line 927
    return-void
.end method

.method public set(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 946
    if-eqz p1, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    iput-wide v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->longValue:J

    .line 947
    sget-object v0, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->booleanValue:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    .line 948
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 864
    iput-object p1, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    .line 865
    return-void
.end method

.method public setNext(Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 0
    .param p1, "next"    # Lcom/badlogic/gdx/utils/JsonValue;

    .line 910
    iput-object p1, p0, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    .line 911
    return-void
.end method

.method public setPrev(Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 0
    .param p1, "prev"    # Lcom/badlogic/gdx/utils/JsonValue;

    .line 920
    iput-object p1, p0, Lcom/badlogic/gdx/utils/JsonValue;->prev:Lcom/badlogic/gdx/utils/JsonValue;

    .line 921
    return-void
.end method

.method public setType(Lcom/badlogic/gdx/utils/JsonValue$ValueType;)V
    .locals 2
    .param p1, "type"    # Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    .line 806
    if-eqz p1, :cond_0

    .line 807
    iput-object p1, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    .line 808
    return-void

    .line 806
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "type cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 176
    iget v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->size:I

    return v0
.end method

.method public toJson(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)Ljava/lang/String;
    .locals 2
    .param p1, "outputType"    # Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    .line 951
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/JsonValue;->isValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 952
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 953
    .local v0, "buffer":Lcom/badlogic/gdx/utils/StringBuilder;
    invoke-direct {p0, p0, v0, p1}, Lcom/badlogic/gdx/utils/JsonValue;->json(Lcom/badlogic/gdx/utils/JsonValue;Lcom/badlogic/gdx/utils/StringBuilder;Lcom/badlogic/gdx/utils/JsonWriter$OutputType;)V

    .line 954
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1008
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/JsonValue;->isValue()Z

    move-result v0

    const-string v1, ": "

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/JsonValue;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1009
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    if-nez v2, :cond_2

    const-string v1, ""

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->minimal:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/badlogic/gdx/utils/JsonValue;->prettyPrint(Lcom/badlogic/gdx/utils/JsonWriter$OutputType;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trace()Ljava/lang/String;
    .locals 5

    .line 1220
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->parent:Lcom/badlogic/gdx/utils/JsonValue;

    if-nez v0, :cond_2

    .line 1221
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_0

    const-string v0, "[]"

    return-object v0

    .line 1222
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->object:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "{}"

    return-object v0

    .line 1223
    :cond_1
    const-string v0, ""

    return-object v0

    .line 1226
    :cond_2
    iget-object v0, v0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonValue$ValueType;->array:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    if-ne v0, v1, :cond_5

    .line 1227
    const-string v0, "[]"

    .line 1228
    .local v0, "trace":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1229
    .local v1, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->parent:Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->child:Lcom/badlogic/gdx/utils/JsonValue;

    .local v2, "child":Lcom/badlogic/gdx/utils/JsonValue;
    :goto_0
    if-eqz v2, :cond_4

    .line 1230
    if-ne v2, p0, :cond_3

    .line 1231
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1232
    goto :goto_1

    .line 1229
    :cond_3
    iget-object v2, v2, Lcom/badlogic/gdx/utils/JsonValue;->next:Lcom/badlogic/gdx/utils/JsonValue;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1235
    .end local v1    # "i":I
    .end local v2    # "child":Lcom/badlogic/gdx/utils/JsonValue;
    :cond_4
    :goto_1
    goto :goto_2

    .end local v0    # "trace":Ljava/lang/String;
    :cond_5
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_6

    .line 1236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    const-string v2, "\""

    const-string v3, "\\\""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "trace":Ljava/lang/String;
    goto :goto_2

    .line 1238
    .end local v0    # "trace":Ljava/lang/String;
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/JsonValue;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1239
    .restart local v0    # "trace":Ljava/lang/String;
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/badlogic/gdx/utils/JsonValue;->parent:Lcom/badlogic/gdx/utils/JsonValue;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/JsonValue;->trace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public type()Lcom/badlogic/gdx/utils/JsonValue$ValueType;
    .locals 1

    .line 802
    iget-object v0, p0, Lcom/badlogic/gdx/utils/JsonValue;->type:Lcom/badlogic/gdx/utils/JsonValue$ValueType;

    return-object v0
.end method
