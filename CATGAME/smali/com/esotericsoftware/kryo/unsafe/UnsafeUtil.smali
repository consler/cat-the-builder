.class public Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;
.super Ljava/lang/Object;
.source "UnsafeUtil.java"


# static fields
.field public static final booleanArrayBaseOffset:J

.field public static final byteArrayBaseOffset:J

.field public static final charArrayBaseOffset:J

.field private static cleanMethod:Ljava/lang/reflect/Method;

.field private static cleanerMethod:Ljava/lang/reflect/Method;

.field private static directByteBufferConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public static final doubleArrayBaseOffset:J

.field public static final floatArrayBaseOffset:J

.field public static final intArrayBaseOffset:J

.field public static final longArrayBaseOffset:J

.field public static final shortArrayBaseOffset:J

.field public static final unsafe:Lsun/misc/Unsafe;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    const-string v1, "kryo"

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 64
    :try_start_0
    sget-boolean v0, Lcom/esotericsoftware/kryo/util/Util;->isAndroid:Z

    if-nez v0, :cond_0

    .line 65
    const-class v0, Lsun/misc/Unsafe;

    const-string v6, "theUnsafe"

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 67
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lsun/misc/Unsafe;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    .line 68
    :try_start_1
    const-class v0, [B

    invoke-virtual {v6, v0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    int-to-long v7, v0

    .line 69
    :try_start_2
    const-class v0, [C

    invoke-virtual {v6, v0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    int-to-long v9, v0

    .line 70
    :try_start_3
    const-class v0, [S

    invoke-virtual {v6, v0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    int-to-long v11, v0

    .line 71
    :try_start_4
    const-class v0, [I

    invoke-virtual {v6, v0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    int-to-long v13, v0

    .line 72
    :try_start_5
    const-class v0, [F

    invoke-virtual {v6, v0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    int-to-long v4, v0

    .line 73
    :try_start_6
    const-class v0, [J

    invoke-virtual {v6, v0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move-wide/from16 v17, v4

    int-to-long v3, v0

    .line 74
    :try_start_7
    const-class v0, [D

    invoke-virtual {v6, v0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    move-wide/from16 v19, v3

    int-to-long v2, v0

    .line 75
    :try_start_8
    const-class v0, [Z

    invoke-virtual {v6, v0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    move-object v4, v6

    int-to-long v5, v0

    move-wide v15, v5

    move-object v6, v4

    move-wide v4, v7

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v4, v6

    move-wide/from16 v4, v17

    goto/16 :goto_6

    :catch_1
    move-exception v0

    move-wide/from16 v19, v3

    move-object v4, v6

    move-wide/from16 v4, v17

    const-wide/16 v2, 0x0

    goto :goto_6

    :catch_2
    move-exception v0

    move-wide/from16 v17, v4

    move-object v4, v6

    move-wide/from16 v4, v17

    const-wide/16 v2, 0x0

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v4, v6

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    goto :goto_5

    :catch_4
    move-exception v0

    move-object v4, v6

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    goto :goto_4

    :catch_5
    move-exception v0

    move-object v4, v6

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    goto :goto_3

    :catch_6
    move-exception v0

    move-object v4, v6

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    goto :goto_2

    :catch_7
    move-exception v0

    move-object v4, v6

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    goto :goto_1

    .line 77
    :cond_0
    :try_start_9
    sget-boolean v0, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "Unsafe is not available on Android."

    invoke-static {v1, v0}, Lcom/esotericsoftware/minlog/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    :cond_1
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    :goto_0
    move-wide/from16 v7, v17

    move-wide/from16 v17, v15

    goto :goto_7

    :catch_8
    move-exception v0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    :goto_1
    const-wide/16 v7, 0x0

    :goto_2
    const-wide/16 v9, 0x0

    :goto_3
    const-wide/16 v11, 0x0

    :goto_4
    const-wide/16 v13, 0x0

    :goto_5
    const-wide/16 v19, 0x0

    .line 80
    :goto_6
    sget-boolean v17, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v17, :cond_2

    const-string v15, "Unsafe is not available."

    invoke-static {v1, v15, v0}, Lcom/esotericsoftware/minlog/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    const-wide/16 v17, 0x0

    move-wide/from16 v21, v4

    move-wide v4, v7

    move-wide/from16 v7, v21

    .line 83
    :goto_7
    sput-wide v4, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->byteArrayBaseOffset:J

    .line 84
    sput-wide v9, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->charArrayBaseOffset:J

    .line 85
    sput-wide v11, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->shortArrayBaseOffset:J

    .line 86
    sput-wide v13, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->intArrayBaseOffset:J

    .line 87
    sput-wide v7, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->floatArrayBaseOffset:J

    .line 88
    sput-wide v19, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->longArrayBaseOffset:J

    .line 89
    sput-wide v2, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->doubleArrayBaseOffset:J

    .line 90
    sput-wide v17, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->booleanArrayBaseOffset:J

    .line 91
    sput-object v6, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->unsafe:Lsun/misc/Unsafe;

    const/4 v2, 0x1

    .line 97
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v2, 0x0

    .line 99
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->directByteBufferConstructor:Ljava/lang/reflect/Constructor;

    .line 100
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    goto :goto_8

    :catch_9
    move-exception v0

    .line 102
    sget-boolean v3, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "No direct ByteBuffer constructor is available."

    invoke-static {v1, v3, v0}, Lcom/esotericsoftware/minlog/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    const/4 v3, 0x0

    .line 103
    sput-object v3, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->directByteBufferConstructor:Ljava/lang/reflect/Constructor;

    .line 110
    :goto_8
    :try_start_b
    const-class v0, Lsun/nio/ch/DirectBuffer;

    const-string v3, "cleaner"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->cleanerMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    .line 111
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 112
    sget-object v0, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->cleanerMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "clean"

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->cleanMethod:Ljava/lang/reflect/Method;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a

    goto :goto_9

    :catch_a
    move-exception v0

    .line 114
    sget-boolean v2, Lcom/esotericsoftware/minlog/Log;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "No direct ByteBuffer clean method is available."

    invoke-static {v1, v2, v0}, Lcom/esotericsoftware/minlog/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    const/4 v1, 0x0

    .line 115
    sput-object v1, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->cleanerMethod:Ljava/lang/reflect/Method;

    :goto_9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dispose(Ljava/nio/ByteBuffer;)V
    .locals 4

    .line 140
    instance-of v0, p0, Lsun/nio/ch/DirectBuffer;

    if-nez v0, :cond_0

    return-void

    .line 141
    :cond_0
    sget-object v0, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->cleanerMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 143
    :try_start_0
    sget-object v1, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->cleanMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method public static isNewDirectBufferAvailable()Z
    .locals 1

    .line 135
    sget-object v0, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->directByteBufferConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static newDirectBuffer(JI)Ljava/nio/ByteBuffer;
    .locals 4

    .line 124
    sget-object v0, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->directByteBufferConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    .line 127
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p2

    .line 129
    new-instance v0, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error creating a ByteBuffer at address: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p2}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 125
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No direct ByteBuffer constructor is available."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
