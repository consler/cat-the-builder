.class final Lcom/esotericsoftware/kryo/serializers/AsmField$FloatAsmField;
.super Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;
.source "AsmField.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/AsmField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FloatAsmField"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lcom/esotericsoftware/kryo/serializers/FieldSerializer$CachedField;-><init>(Ljava/lang/reflect/Field;)V

    return-void
.end method


# virtual methods
.method public copy(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .line 96
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/AsmField$FloatAsmField;->access:Lcom/esotericsoftware/reflectasm/FieldAccess;

    iget v1, p0, Lcom/esotericsoftware/kryo/serializers/AsmField$FloatAsmField;->accessIndex:I

    iget-object v2, p0, Lcom/esotericsoftware/kryo/serializers/AsmField$FloatAsmField;->access:Lcom/esotericsoftware/reflectasm/FieldAccess;

    iget v3, p0, Lcom/esotericsoftware/kryo/serializers/AsmField$FloatAsmField;->accessIndex:I

    invoke-virtual {v2, p1, v3}, Lcom/esotericsoftware/reflectasm/FieldAccess;->getFloat(Ljava/lang/Object;I)F

    move-result p1

    invoke-virtual {v0, p2, v1, p1}, Lcom/esotericsoftware/reflectasm/FieldAccess;->setFloat(Ljava/lang/Object;IF)V

    return-void
.end method

.method public read(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Object;)V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/AsmField$FloatAsmField;->access:Lcom/esotericsoftware/reflectasm/FieldAccess;

    iget v1, p0, Lcom/esotericsoftware/kryo/serializers/AsmField$FloatAsmField;->accessIndex:I

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    invoke-virtual {v0, p2, v1, p1}, Lcom/esotericsoftware/reflectasm/FieldAccess;->setFloat(Ljava/lang/Object;IF)V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/esotericsoftware/kryo/serializers/AsmField$FloatAsmField;->access:Lcom/esotericsoftware/reflectasm/FieldAccess;

    iget v1, p0, Lcom/esotericsoftware/kryo/serializers/AsmField$FloatAsmField;->accessIndex:I

    invoke-virtual {v0, p2, v1}, Lcom/esotericsoftware/reflectasm/FieldAccess;->getFloat(Ljava/lang/Object;I)F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    return-void
.end method
