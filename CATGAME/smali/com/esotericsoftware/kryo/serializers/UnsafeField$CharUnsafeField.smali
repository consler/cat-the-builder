.class final Lcom/esotericsoftware/kryo/serializers/UnsafeField$CharUnsafeField;
.super Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
.source "UnsafeField.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/UnsafeField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CharUnsafeField"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;)V
    .locals 2

    .line 165
    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;-><init>(Ljava/lang/reflect/Field;)V

    .line 166
    sget-object v0, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/esotericsoftware/kryo/serializers/UnsafeField$CharUnsafeField;->offset:J

    return-void
.end method


# virtual methods
.method public copy(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .line 178
    sget-object v0, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->unsafe:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lcom/esotericsoftware/kryo/serializers/UnsafeField$CharUnsafeField;->offset:J

    sget-object v3, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->unsafe:Lsun/misc/Unsafe;

    iget-wide v4, p0, Lcom/esotericsoftware/kryo/serializers/UnsafeField$CharUnsafeField;->offset:J

    invoke-virtual {v3, p1, v4, v5}, Lsun/misc/Unsafe;->getChar(Ljava/lang/Object;J)C

    move-result p1

    invoke-virtual {v0, p2, v1, v2, p1}, Lsun/misc/Unsafe;->putChar(Ljava/lang/Object;JC)V

    return-void
.end method

.method public read(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Object;)V
    .locals 3

    .line 174
    sget-object v0, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->unsafe:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lcom/esotericsoftware/kryo/serializers/UnsafeField$CharUnsafeField;->offset:J

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/Input;->readChar()C

    move-result p1

    invoke-virtual {v0, p2, v1, v2, p1}, Lsun/misc/Unsafe;->putChar(Ljava/lang/Object;JC)V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 3

    .line 170
    sget-object v0, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->unsafe:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lcom/esotericsoftware/kryo/serializers/UnsafeField$CharUnsafeField;->offset:J

    invoke-virtual {v0, p2, v1, v2}, Lsun/misc/Unsafe;->getChar(Ljava/lang/Object;J)C

    move-result p2

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/io/Output;->writeChar(C)V

    return-void
.end method
