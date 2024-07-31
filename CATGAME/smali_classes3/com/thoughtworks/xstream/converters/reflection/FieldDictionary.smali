.class public Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;
.super Ljava/lang/Object;
.source "FieldDictionary.java"

# interfaces
.implements Lcom/thoughtworks/xstream/core/Caching;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary$DictionaryEntry;,
        Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary$FieldUtil;
    }
.end annotation


# static fields
.field private static final OBJECT_DICTIONARY_ENTRY:Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary$DictionaryEntry;

.field static synthetic class$java$lang$Object:Ljava/lang/Class;


# instance fields
.field private transient dictionaryEntries:Ljava/util/Map;

.field private transient fieldUtil:Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary$FieldUtil;

.field private final sorter:Lcom/thoughtworks/xstream/converters/reflection/FieldKeySorter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 34
    new-instance v0, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary$DictionaryEntry;

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    sget-object v2, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary$DictionaryEntry;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    sput-object v0, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->OBJECT_DICTIONARY_ENTRY:Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary$DictionaryEntry;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    new-instance v0, Lcom/thoughtworks/xstream/converters/reflection/ImmutableFieldKeySorter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/reflection/ImmutableFieldKeySorter;-><init>()V

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;-><init>(Lcom/thoughtworks/xstream/converters/reflection/FieldKeySorter;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/converters/reflection/FieldKeySorter;)V
    .locals 0
    .param p1, "sorter"    # Lcom/thoughtworks/xstream/converters/reflection/FieldKeySorter;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->sorter:Lcom/thoughtworks/xstream/converters/reflection/FieldKeySorter;

    .line 47
    invoke-direct {p0}, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->init()V

    .line 48
    return-void
.end method

.method private buildDictionaryEntryForClass(Ljava/lang/Class;Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary$DictionaryEntry;)Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary$DictionaryEntry;
    .locals 9
    .param p1, "cls"    # Ljava/lang/Class;
    .param p2, "lastDictionaryEntry"    # Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary$DictionaryEntry;

    .line 159
    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary$DictionaryEntry;->getKeyedByFieldName()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 160
    .local v0, "keyedByFieldName":Ljava/util/Map;
    new-instance v1, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap;

    invoke-virtual {p2}, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary$DictionaryEntry;->getKeyedByFieldKey()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap;-><init>(Ljava/util/Map;)V

    .line 161
    .local v1, "keyedByFieldKey":Ljava/util/Map;
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 162
    .local v2, "fields":[Ljava/lang/reflect/Field;
    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->reverseFieldDefinition()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 163
    array-length v3, v2

    shr-int/2addr v3, v4

    .local v3, "i":I
    :goto_0
    add-int/lit8 v5, v3, -0x1

    .end local v3    # "i":I
    .local v5, "i":I
    if-lez v3, :cond_0

    .line 164
    array-length v3, v2

    sub-int/2addr v3, v5

    sub-int/2addr v3, v4

    .line 165
    .local v3, "idx":I
    aget-object v6, v2, v5

    .line 166
    .local v6, "field":Ljava/lang/reflect/Field;
    aget-object v7, v2, v3

    aput-object v7, v2, v5

    .line 167
    aput-object v6, v2, v3

    .line 168
    .end local v3    # "idx":I
    .end local v6    # "field":Ljava/lang/reflect/Field;
    move v3, v5

    goto :goto_0

    .line 170
    .end local v5    # "i":I
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v5, v2

    if-ge v3, v5, :cond_5

    .line 171
    aget-object v5, v2, v3

    .line 172
    .local v5, "field":Ljava/lang/reflect/Field;
    iget-object v6, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->fieldUtil:Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary$FieldUtil;

    invoke-interface {v6, v5}, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary$FieldUtil;->isSynthetic(Ljava/lang/reflect/Field;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "$jacoco"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 173
    goto :goto_2

    .line 175
    :cond_1
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v6

    if-nez v6, :cond_2

    .line 176
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 178
    :cond_2
    new-instance v6, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v8

    invoke-direct {v6, v7, v8, v3}, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;-><init>(Ljava/lang/String;Ljava/lang/Class;I)V

    .line 179
    .local v6, "fieldKey":Lcom/thoughtworks/xstream/converters/reflection/FieldKey;
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/reflect/Field;

    .line 180
    .local v7, "existent":Ljava/lang/reflect/Field;
    if-eqz v7, :cond_3

    .line 182
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v8

    and-int/lit8 v8, v8, 0x8

    if-nez v8, :cond_3

    if-eqz v7, :cond_4

    .line 184
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v8

    and-int/lit8 v8, v8, 0x8

    if-nez v8, :cond_4

    .line 185
    :cond_3
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    :cond_4
    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .end local v6    # "fieldKey":Lcom/thoughtworks/xstream/converters/reflection/FieldKey;
    .end local v7    # "existent":Ljava/lang/reflect/Field;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 189
    .end local v3    # "i":I
    :cond_5
    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->sorter:Lcom/thoughtworks/xstream/converters/reflection/FieldKeySorter;

    invoke-interface {v3, p1, v1}, Lcom/thoughtworks/xstream/converters/reflection/FieldKeySorter;->sort(Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    .line 190
    .local v3, "sortedFieldKeys":Ljava/util/Map;
    new-instance v4, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary$DictionaryEntry;

    invoke-direct {v4, v0, v3}, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary$DictionaryEntry;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    return-object v4
.end method

.method private buildMap(Ljava/lang/Class;Z)Ljava/util/Map;
    .locals 7
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "tupleKeyed"    # Z

    .line 124
    move-object v0, p1

    .line 126
    .local v0, "cls":Ljava/lang/Class;
    const/4 v1, 0x0

    .line 127
    .local v1, "lastDictionaryEntry":Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary$DictionaryEntry;
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 128
    .local v2, "superClasses":Ljava/util/LinkedList;
    :cond_0
    :goto_0
    if-nez v1, :cond_4

    .line 129
    sget-object v3, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->class$java$lang$Object:Ljava/lang/Class;

    if-nez v3, :cond_1

    const-string v3, "java.lang.Object"

    invoke-static {v3}, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->class$java$lang$Object:Ljava/lang/Class;

    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    if-nez v0, :cond_2

    goto :goto_1

    .line 132
    :cond_2
    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->getDictionaryEntry(Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary$DictionaryEntry;

    move-result-object v1

    goto :goto_2

    .line 130
    :cond_3
    :goto_1
    sget-object v1, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->OBJECT_DICTIONARY_ENTRY:Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary$DictionaryEntry;

    .line 134
    :goto_2
    if-nez v1, :cond_0

    .line 135
    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 136
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 140
    :cond_4
    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "iter":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 141
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 142
    .end local v0    # "cls":Ljava/lang/Class;
    .local v4, "cls":Ljava/lang/Class;
    invoke-direct {p0, v4, v1}, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->buildDictionaryEntryForClass(Ljava/lang/Class;Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary$DictionaryEntry;)Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary$DictionaryEntry;

    move-result-object v0

    .line 143
    .local v0, "newDictionaryEntry":Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary$DictionaryEntry;
    monitor-enter p0

    .line 144
    :try_start_0
    invoke-direct {p0, v4}, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->getDictionaryEntry(Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary$DictionaryEntry;

    move-result-object v5

    .line 145
    .local v5, "concurrentEntry":Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary$DictionaryEntry;
    if-nez v5, :cond_5

    .line 146
    iget-object v6, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->dictionaryEntries:Ljava/util/Map;

    invoke-interface {v6, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 148
    :cond_5
    move-object v0, v5

    .line 150
    .end local v5    # "concurrentEntry":Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary$DictionaryEntry;
    :goto_4
    monitor-exit p0

    .line 151
    move-object v1, v0

    .line 152
    .end local v0    # "newDictionaryEntry":Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary$DictionaryEntry;
    move-object v0, v4

    goto :goto_3

    .line 150
    .restart local v0    # "newDictionaryEntry":Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary$DictionaryEntry;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 154
    .end local v3    # "iter":Ljava/util/Iterator;
    .end local v4    # "cls":Ljava/lang/Class;
    .local v0, "cls":Ljava/lang/Class;
    :cond_6
    if-eqz p2, :cond_7

    invoke-virtual {v1}, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary$DictionaryEntry;->getKeyedByFieldKey()Ljava/util/Map;

    move-result-object v3

    goto :goto_5

    :cond_7
    invoke-virtual {v1}, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary$DictionaryEntry;->getKeyedByFieldName()Ljava/util/Map;

    move-result-object v3

    :goto_5
    return-object v3
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 129
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method

.method private declared-synchronized getDictionaryEntry(Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary$DictionaryEntry;
    .locals 1
    .param p1, "cls"    # Ljava/lang/Class;

    monitor-enter p0

    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->dictionaryEntries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary$DictionaryEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 194
    .end local p0    # "this":Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;
    .end local p1    # "cls":Ljava/lang/Class;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private init()V
    .locals 2

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->dictionaryEntries:Ljava/util/Map;

    .line 52
    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->is15()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    :try_start_0
    const-string v0, "com.thoughtworks.xstream.converters.reflection.FieldUtil15"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/thoughtworks/xstream/core/JVM;->loadClassForName(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary$FieldUtil;

    iput-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->fieldUtil:Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary$FieldUtil;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 58
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->fieldUtil:Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary$FieldUtil;

    if-nez v0, :cond_1

    .line 59
    new-instance v0, Lcom/thoughtworks/xstream/converters/reflection/FieldUtil14;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/reflection/FieldUtil14;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->fieldUtil:Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary$FieldUtil;

    .line 60
    :cond_1
    return-void
.end method


# virtual methods
.method public field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;
    .locals 3
    .param p1, "cls"    # Ljava/lang/Class;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "definedIn"    # Ljava/lang/Class;

    .line 95
    invoke-virtual {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->fieldOrNull(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 96
    .local v0, "field":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_0

    .line 99
    return-object v0

    .line 97
    :cond_0
    new-instance v1, Lcom/thoughtworks/xstream/converters/reflection/MissingFieldException;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lcom/thoughtworks/xstream/converters/reflection/MissingFieldException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method public fieldOrNull(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;
    .locals 3
    .param p1, "cls"    # Ljava/lang/Class;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "definedIn"    # Ljava/lang/Class;

    .line 115
    if-eqz p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->buildMap(Ljava/lang/Class;Z)Ljava/util/Map;

    move-result-object v0

    .line 116
    .local v0, "fields":Ljava/util/Map;
    if-eqz p3, :cond_1

    new-instance v1, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;

    const/4 v2, -0x1

    invoke-direct {v1, p2, p3, v2}, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;-><init>(Ljava/lang/String;Ljava/lang/Class;I)V

    goto :goto_1

    :cond_1
    move-object v1, p2

    :goto_1
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    .line 119
    .local v1, "field":Ljava/lang/reflect/Field;
    return-object v1
.end method

.method public fieldsFor(Ljava/lang/Class;)Ljava/util/Iterator;
    .locals 1
    .param p1, "cls"    # Ljava/lang/Class;

    .line 80
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->buildMap(Ljava/lang/Class;Z)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized flushCache()V
    .locals 1

    monitor-enter p0

    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->dictionaryEntries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 199
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->sorter:Lcom/thoughtworks/xstream/converters/reflection/FieldKeySorter;

    instance-of v0, v0, Lcom/thoughtworks/xstream/core/Caching;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->sorter:Lcom/thoughtworks/xstream/converters/reflection/FieldKeySorter;

    check-cast v0, Lcom/thoughtworks/xstream/core/Caching;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/core/Caching;->flushCache()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    .end local p0    # "this":Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;
    :cond_0
    monitor-exit p0

    return-void

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 0

    .line 205
    invoke-direct {p0}, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->init()V

    .line 206
    return-object p0
.end method

.method public serializableFieldsFor(Ljava/lang/Class;)Ljava/util/Iterator;
    .locals 1
    .param p1, "cls"    # Ljava/lang/Class;

    .line 70
    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/converters/reflection/FieldDictionary;->fieldsFor(Ljava/lang/Class;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
