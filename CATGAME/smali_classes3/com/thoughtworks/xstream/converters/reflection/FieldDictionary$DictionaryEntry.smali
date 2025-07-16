.class final Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary$DictionaryEntry;
.super Ljava/lang/Object;
.source "FieldDictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DictionaryEntry"
.end annotation


# instance fields
.field private final keyedByFieldKey:Ljava/util/Map;

.field private final keyedByFieldName:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary$DictionaryEntry;->keyedByFieldName:Ljava/util/Map;

    .line 221
    iput-object p2, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary$DictionaryEntry;->keyedByFieldKey:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getKeyedByFieldKey()Ljava/util/Map;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary$DictionaryEntry;->keyedByFieldKey:Ljava/util/Map;

    return-object v0
.end method

.method public getKeyedByFieldName()Ljava/util/Map;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary$DictionaryEntry;->keyedByFieldName:Ljava/util/Map;

    return-object v0
.end method
