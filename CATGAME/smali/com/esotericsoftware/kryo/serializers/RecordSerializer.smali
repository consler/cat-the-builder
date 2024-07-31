.class public Lcom/esotericsoftware/kryo/serializers/RecordSerializer;
.super Lcom/esotericsoftware/kryo/serializers/ImmutableSerializer;
.source "RecordSerializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/esotericsoftware/kryo/serializers/ImmutableSerializer<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final GET_NAME:Ljava/lang/reflect/Method;

.field private static final GET_RECORD_COMPONENTS:Ljava/lang/reflect/Method;

.field private static final GET_TYPE:Ljava/lang/reflect/Method;

.field private static final IS_RECORD:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 53
    :try_start_0
    const-string v0, "java.lang.reflect.RecordComponent"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 54
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Ljava/lang/Class;

    const-string v2, "isRecord"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 55
    .local v1, "isRecord":Ljava/lang/reflect/Method;
    const-class v2, Ljava/lang/Class;

    const-string v4, "getRecordComponents"

    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 56
    .local v2, "getRecordComponents":Ljava/lang/reflect/Method;
    const-string v4, "getName"

    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 57
    .local v4, "getName":Ljava/lang/reflect/Method;
    const-string v5, "getType"

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 64
    .local v0, "getType":Ljava/lang/reflect/Method;
    goto :goto_1

    .line 58
    .end local v0    # "getType":Ljava/lang/reflect/Method;
    .end local v1    # "isRecord":Ljava/lang/reflect/Method;
    .end local v2    # "getRecordComponents":Ljava/lang/reflect/Method;
    .end local v4    # "getName":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_0
    const/4 v1, 0x0

    .line 61
    .restart local v1    # "isRecord":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    .line 62
    .restart local v2    # "getRecordComponents":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    .line 63
    .restart local v4    # "getName":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    move-object v0, v3

    .line 66
    .local v0, "getType":Ljava/lang/reflect/Method;
    :goto_1
    sput-object v1, Lcom/esotericsoftware/kryo/serializers/RecordSerializer;->IS_RECORD:Ljava/lang/reflect/Method;

    .line 67
    sput-object v2, Lcom/esotericsoftware/kryo/serializers/RecordSerializer;->GET_RECORD_COMPONENTS:Ljava/lang/reflect/Method;

    .line 68
    sput-object v4, Lcom/esotericsoftware/kryo/serializers/RecordSerializer;->GET_NAME:Ljava/lang/reflect/Method;

    .line 69
    sput-object v0, Lcom/esotericsoftware/kryo/serializers/RecordSerializer;->GET_TYPE:Ljava/lang/reflect/Method;

    .line 70
    .end local v0    # "getType":Ljava/lang/reflect/Method;
    .end local v1    # "isRecord":Ljava/lang/reflect/Method;
    .end local v2    # "getRecordComponents":Ljava/lang/reflect/Method;
    .end local v4    # "getName":Ljava/lang/reflect/Method;
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 72
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/RecordSerializer;, "Lcom/esotericsoftware/kryo/serializers/RecordSerializer<TT;>;"
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/serializers/ImmutableSerializer;-><init>()V

    .line 73
    return-void
.end method

.method private static componentValue(Ljava/lang/Object;Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;)Ljava/lang/Object;
    .locals 4
    .param p0, "recordObject"    # Ljava/lang/Object;
    .param p1, "recordComponent"    # Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;

    .line 191
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 192
    .local v0, "get":Ljava/lang/reflect/Method;
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 193
    .end local v0    # "get":Ljava/lang/reflect/Method;
    :catchall_0
    move-exception v0

    .line 194
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v1, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    .line 195
    .local v1, "ex":Lcom/esotericsoftware/kryo/KryoException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not retrieve record components ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 195
    invoke-virtual {v1, v2}, Lcom/esotericsoftware/kryo/KryoException;->addTrace(Ljava/lang/String;)V

    .line 197
    throw v1
.end method

.method private static invokeCanonicalConstructor(Ljava/lang/Class;[Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "recordComponents"    # [Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 206
    .local p0, "recordType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/esotericsoftware/kryo/serializers/-$$Lambda$KgOJjcIMwjMOrjsbVht7Cwd6nKI;->INSTANCE:Lcom/esotericsoftware/kryo/serializers/-$$Lambda$KgOJjcIMwjMOrjsbVht7Cwd6nKI;

    .line 207
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/esotericsoftware/kryo/serializers/-$$Lambda$RecordSerializer$7gfI3O6KAXkCs_5vuUDSArQsCDU;->INSTANCE:Lcom/esotericsoftware/kryo/serializers/-$$Lambda$RecordSerializer$7gfI3O6KAXkCs_5vuUDSArQsCDU;

    .line 208
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    .line 209
    .local v0, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 210
    .local v1, "canonicalConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    invoke-virtual {v1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    .line 211
    .end local v0    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v1    # "canonicalConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    :catchall_0
    move-exception v0

    .line 212
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v1, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    .line 213
    .local v1, "ex":Lcom/esotericsoftware/kryo/KryoException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not construct type ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/esotericsoftware/kryo/KryoException;->addTrace(Ljava/lang/String;)V

    .line 214
    throw v1
.end method

.method private isRecord(Ljava/lang/Class;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 133
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/RecordSerializer;, "Lcom/esotericsoftware/kryo/serializers/RecordSerializer<TT;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    sget-object v0, Lcom/esotericsoftware/kryo/serializers/RecordSerializer;->IS_RECORD:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 134
    :catchall_0
    move-exception v0

    .line 135
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not determine type ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic lambda$invokeCanonicalConstructor$0(I)[Ljava/lang/Class;
    .locals 1
    .param p0, "x$0"    # I

    .line 208
    new-array v0, p0, [Ljava/lang/Class;

    return-object v0
.end method

.method private static recordComponents(Ljava/lang/Class;Ljava/util/Comparator;)[Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/Comparator<",
            "Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;",
            ">;)[",
            "Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;"
        }
    .end annotation

    .line 170
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;>;"
    :try_start_0
    sget-object v0, Lcom/esotericsoftware/kryo/serializers/RecordSerializer;->GET_RECORD_COMPONENTS:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 171
    .local v0, "rawComponents":[Ljava/lang/Object;
    array-length v2, v0

    new-array v2, v2, [Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;

    .line 172
    .local v2, "recordComponents":[Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 173
    aget-object v4, v0, v3

    .line 174
    .local v4, "comp":Ljava/lang/Object;
    new-instance v5, Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;

    sget-object v6, Lcom/esotericsoftware/kryo/serializers/RecordSerializer;->GET_NAME:Ljava/lang/reflect/Method;

    new-array v7, v1, [Ljava/lang/Object;

    .line 175
    invoke-virtual {v6, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    sget-object v7, Lcom/esotericsoftware/kryo/serializers/RecordSerializer;->GET_TYPE:Ljava/lang/reflect/Method;

    new-array v8, v1, [Ljava/lang/Object;

    .line 176
    invoke-virtual {v7, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Class;

    invoke-direct {v5, v6, v7, v3}, Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;-><init>(Ljava/lang/String;Ljava/lang/Class;I)V

    aput-object v5, v2, v3

    .line 172
    .end local v4    # "comp":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 178
    .end local v3    # "i":I
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {v2, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    :cond_1
    return-object v2

    .line 180
    .end local v0    # "rawComponents":[Ljava/lang/Object;
    .end local v2    # "recordComponents":[Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;
    :catchall_0
    move-exception v0

    .line 181
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v1, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    .line 182
    .local v1, "ex":Lcom/esotericsoftware/kryo/KryoException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not retrieve record components ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/esotericsoftware/kryo/KryoException;->addTrace(Ljava/lang/String;)V

    .line 183
    throw v1
.end method


# virtual methods
.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 10
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "input"    # Lcom/esotericsoftware/kryo/io/Input;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/Kryo;",
            "Lcom/esotericsoftware/kryo/io/Input;",
            "Ljava/lang/Class<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 104
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/RecordSerializer;, "Lcom/esotericsoftware/kryo/serializers/RecordSerializer<TT;>;"
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    const-string v0, " ("

    invoke-direct {p0, p3}, Lcom/esotericsoftware/kryo/serializers/RecordSerializer;->isRecord(Ljava/lang/Class;)Z

    move-result v1

    const-string v2, ")"

    if-eqz v1, :cond_3

    .line 107
    sget-object v1, Lcom/esotericsoftware/kryo/serializers/-$$Lambda$INL0Wy7DFoOIoPos75TWzmbtK1Y;->INSTANCE:Lcom/esotericsoftware/kryo/serializers/-$$Lambda$INL0Wy7DFoOIoPos75TWzmbtK1Y;

    invoke-static {v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/esotericsoftware/kryo/serializers/RecordSerializer;->recordComponents(Ljava/lang/Class;Ljava/util/Comparator;)[Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;

    move-result-object v1

    .line 108
    .local v1, "recordComponents":[Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;
    array-length v3, v1

    new-array v3, v3, [Ljava/lang/Object;

    .line 109
    .local v3, "values":[Ljava/lang/Object;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_2

    .line 110
    aget-object v5, v1, v4

    .line 111
    .local v5, "rc":Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;
    invoke-virtual {v5}, Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;->name()Ljava/lang/String;

    move-result-object v6

    .line 113
    .local v6, "name":Ljava/lang/String;
    :try_start_0
    sget-boolean v7, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v7, :cond_0

    const-string v7, "kryo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Read property: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_0
    invoke-virtual {v5}, Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;->index()I

    move-result v7

    invoke-virtual {v5}, Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;->type()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->isPrimitive()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v5}, Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;->type()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {p1, p2, v8}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_1

    .line 116
    :cond_1
    invoke-virtual {v5}, Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;->type()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {p1, p2, v8}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    :goto_1
    aput-object v8, v3, v7
    :try_end_0
    .catch Lcom/esotericsoftware/kryo/KryoException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    nop

    .line 109
    .end local v5    # "rc":Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;
    .end local v6    # "name":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 120
    .restart local v5    # "rc":Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;
    .restart local v6    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v7

    .line 121
    .local v7, "t":Ljava/lang/Throwable;
    new-instance v8, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v8, v7}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    .line 122
    .local v8, "ex":Lcom/esotericsoftware/kryo/KryoException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/esotericsoftware/kryo/KryoException;->addTrace(Ljava/lang/String;)V

    .line 123
    throw v8

    .line 117
    .end local v7    # "t":Ljava/lang/Throwable;
    .end local v8    # "ex":Lcom/esotericsoftware/kryo/KryoException;
    :catch_0
    move-exception v7

    .line 118
    .local v7, "ex":Lcom/esotericsoftware/kryo/KryoException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/esotericsoftware/kryo/KryoException;->addTrace(Ljava/lang/String;)V

    .line 119
    throw v7

    .line 126
    .end local v4    # "i":I
    .end local v5    # "rc":Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "ex":Lcom/esotericsoftware/kryo/KryoException;
    :cond_2
    sget-object v0, Lcom/esotericsoftware/kryo/serializers/-$$Lambda$GCfFRPiWShDhTe04GSgCCyawOBs;->INSTANCE:Lcom/esotericsoftware/kryo/serializers/-$$Lambda$GCfFRPiWShDhTe04GSgCCyawOBs;

    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 127
    invoke-static {p3, v1, v3}, Lcom/esotericsoftware/kryo/serializers/RecordSerializer;->invokeCanonicalConstructor(Ljava/lang/Class;[Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 105
    .end local v1    # "recordComponents":[Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;
    .end local v3    # "values":[Ljava/lang/Object;
    :cond_3
    new-instance v0, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not a record ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 12
    .param p1, "kryo"    # Lcom/esotericsoftware/kryo/Kryo;
    .param p2, "output"    # Lcom/esotericsoftware/kryo/io/Output;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/Kryo;",
            "Lcom/esotericsoftware/kryo/io/Output;",
            "TT;)V"
        }
    .end annotation

    .line 77
    .local p0, "this":Lcom/esotericsoftware/kryo/serializers/RecordSerializer;, "Lcom/esotericsoftware/kryo/serializers/RecordSerializer<TT;>;"
    .local p3, "object":Ljava/lang/Object;, "TT;"
    const-string v0, ")"

    const-string v1, " ("

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 78
    .local v2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, v2}, Lcom/esotericsoftware/kryo/serializers/RecordSerializer;->isRecord(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 81
    sget-object v3, Lcom/esotericsoftware/kryo/serializers/-$$Lambda$INL0Wy7DFoOIoPos75TWzmbtK1Y;->INSTANCE:Lcom/esotericsoftware/kryo/serializers/-$$Lambda$INL0Wy7DFoOIoPos75TWzmbtK1Y;

    invoke-static {v3}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/esotericsoftware/kryo/serializers/RecordSerializer;->recordComponents(Ljava/lang/Class;Ljava/util/Comparator;)[Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    .line 82
    .local v6, "rc":Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;
    invoke-virtual {v6}, Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;->type()Ljava/lang/Class;

    move-result-object v7

    .line 83
    .local v7, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v6}, Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;->name()Ljava/lang/String;

    move-result-object v8

    .line 85
    .local v8, "name":Ljava/lang/String;
    :try_start_0
    sget-boolean v9, Lcom/esotericsoftware/minlog/Log;->TRACE:Z

    if-eqz v9, :cond_0

    const-string v9, "kryo"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Write property: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/esotericsoftware/minlog/Log;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_0
    invoke-virtual {v6}, Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;->type()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->isPrimitive()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 87
    invoke-static {p3, v6}, Lcom/esotericsoftware/kryo/serializers/RecordSerializer;->componentValue(Ljava/lang/Object;Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {p1, p2, v9}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    goto :goto_1

    .line 89
    :cond_1
    invoke-static {p3, v6}, Lcom/esotericsoftware/kryo/serializers/RecordSerializer;->componentValue(Ljava/lang/Object;Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {p1, p2, v9, v7}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V
    :try_end_0
    .catch Lcom/esotericsoftware/kryo/KryoException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :goto_1
    nop

    .line 81
    .end local v6    # "rc":Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;
    .end local v7    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "name":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 94
    .restart local v6    # "rc":Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;
    .restart local v7    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v8    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 95
    .local v3, "t":Ljava/lang/Throwable;
    new-instance v4, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v4, v3}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    .line 96
    .local v4, "ex":Lcom/esotericsoftware/kryo/KryoException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/esotericsoftware/kryo/KryoException;->addTrace(Ljava/lang/String;)V

    .line 97
    throw v4

    .line 91
    .end local v3    # "t":Ljava/lang/Throwable;
    .end local v4    # "ex":Lcom/esotericsoftware/kryo/KryoException;
    :catch_0
    move-exception v3

    .line 92
    .local v3, "ex":Lcom/esotericsoftware/kryo/KryoException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/esotericsoftware/kryo/KryoException;->addTrace(Ljava/lang/String;)V

    .line 93
    throw v3

    .line 100
    .end local v3    # "ex":Lcom/esotericsoftware/kryo/KryoException;
    .end local v6    # "rc":Lcom/esotericsoftware/kryo/serializers/RecordSerializer$RecordComponent;
    .end local v7    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "name":Ljava/lang/String;
    :cond_2
    return-void

    .line 79
    :cond_3
    new-instance v0, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is not a record"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
