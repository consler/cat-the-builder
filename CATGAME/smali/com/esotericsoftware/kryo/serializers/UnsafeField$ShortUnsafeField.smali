.class final Lcom/esotericsoftware/kryo/serializers/UnsafeField$ShortUnsafeField;
.super Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
.source "UnsafeField.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/UnsafeField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ShortUnsafeField"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;)V
    .locals 2

    .line 108
    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;-><init>(Ljava/lang/reflect/Field;)V

    .line 109
    sget-object v0, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->unsafe:Lsun/misc/Unsafe;

    invoke-virtual {v0, p1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/esotericsoftware/kryo/serializers/UnsafeField$ShortUnsafeField;->offset:J

    return-void
.end method


# virtual methods
.method public copy(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .line 121
    sget-object v0, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->unsafe:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lcom/esotericsoftware/kryo/serializers/UnsafeField$ShortUnsafeField;->offset:J

    sget-object v3, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->unsafe:Lsun/misc/Unsafe;

    iget-wide v4, p0, Lcom/esotericsoftware/kryo/serializers/UnsafeField$ShortUnsafeField;->offset:J

    invoke-virtual {v3, p1, v4, v5}, Lsun/misc/Unsafe;->getShort(Ljava/lang/Object;J)S

    move-result p1

    invoke-virtual {v0, p2, v1, v2, p1}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    return-void
.end method

.method public read(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Object;)V
    .locals 3

    .line 117
    sget-object v0, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->unsafe:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lcom/esotericsoftware/kryo/serializers/UnsafeField$ShortUnsafeField;->offset:J

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/Input;->readShort()S

    move-result p1

    invoke-virtual {v0, p2, v1, v2, p1}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 3

    .line 113
    sget-object v0, Lcom/esotericsoftware/kryo/unsafe/UnsafeUtil;->unsafe:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lcom/esotericsoftware/kryo/serializers/UnsafeField$ShortUnsafeField;->offset:J

    invoke-virtual {v0, p2, v1, v2}, Lsun/misc/Unsafe;->getShort(Ljava/lang/Object;J)S

    move-result p2

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/io/Output;->writeShort(I)V

    return-void
.end method
