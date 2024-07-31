.class public final Lorg/catrobat/paintroid/iotasks/OpenRasterFileFormatConversion;
.super Ljava/lang/Object;
.source "OpenRasterFileFormatConversion.java"


# static fields
.field private static final COMPRESS_QUALITY:I = 0x64

.field private static final TAG:Ljava/lang/String;

.field private static final THUMBNAIL_HEIGHT:I = 0x100

.field private static final THUMBNAIL_WIDTH:I = 0x100


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 77
    const-class v0, Lorg/catrobat/paintroid/iotasks/OpenRasterFileFormatConversion;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/paintroid/iotasks/OpenRasterFileFormatConversion;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static exportToOraFile(Ljava/util/List;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/ContentResolver;)Landroid/net/Uri;
    .locals 23
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "bitmapAllLayers"    # Landroid/graphics/Bitmap;
    .param p3, "resolver"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            "Landroid/content/ContentResolver;",
            ")",
            "Landroid/net/Uri;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    .local p0, "bitmapList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 90
    .local v3, "contentValues":Landroid/content/ContentValues;
    const/4 v4, 0x0

    .line 92
    .local v4, "wholeSize":F
    const-string v5, "image/openraster"

    .line 93
    .local v5, "mimeType":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 94
    .local v6, "mimeByteArray":[B
    invoke-static/range {p0 .. p0}, Lorg/catrobat/paintroid/iotasks/OpenRasterFileFormatConversion;->getXmlStack(Ljava/util/List;)[B

    move-result-object v7

    .line 96
    .local v7, "xmlByteArray":[B
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/16 v10, 0x64

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    .line 97
    .local v9, "current":Landroid/graphics/Bitmap;
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 98
    .local v11, "bos":Ljava/io/ByteArrayOutputStream;
    sget-object v12, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v9, v12, v10, v11}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 99
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    .line 100
    .local v10, "byteArray":[B
    array-length v12, v10

    int-to-float v12, v12

    add-float/2addr v4, v12

    .line 101
    .end local v9    # "current":Landroid/graphics/Bitmap;
    .end local v10    # "byteArray":[B
    .end local v11    # "bos":Ljava/io/ByteArrayOutputStream;
    goto :goto_0

    .line 103
    :cond_0
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 104
    .local v8, "bosMerged":Ljava/io/ByteArrayOutputStream;
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v1, v9, v10, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 105
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    .line 107
    .local v9, "bitmapByteArray":[B
    const/16 v11, 0x100

    const/4 v12, 0x0

    invoke-static {v1, v11, v11, v12}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 108
    .local v11, "bitmapThumb":Landroid/graphics/Bitmap;
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 109
    .local v13, "bosThumb":Ljava/io/ByteArrayOutputStream;
    sget-object v14, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v11, v14, v10, v13}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 110
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v14

    .line 112
    .local v14, "bitmapThumbArray":[B
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1d

    const-string v12, "mime_type"

    const-string v1, "_display_name"

    if-lt v15, v10, :cond_1

    .line 115
    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    const-string v10, "relative_path"

    invoke-virtual {v3, v10, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v1, "application/applefile"

    invoke-virtual {v3, v12, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    sget-object v1, Landroid/provider/MediaStore$Downloads;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    move-object/from16 v18, v5

    .local v1, "imageUri":Landroid/net/Uri;
    goto :goto_1

    .line 121
    .end local v1    # "imageUri":Landroid/net/Uri;
    :cond_1
    const-string v10, "external"

    invoke-static {v10}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 122
    .local v10, "uri":Landroid/net/Uri;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v17, Lorg/catrobat/paintroid/common/Constants;->DOWNLOADS_DIRECTORY:Ljava/io/File;

    move-object/from16 v18, v5

    .end local v5    # "mimeType":Ljava/lang/String;
    .local v18, "mimeType":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v15, "_data"

    invoke-virtual {v3, v15, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v1, "application/zip"

    invoke-virtual {v3, v12, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v1, "media_type"

    invoke-virtual {v3, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    .line 128
    .local v19, "date":J
    const-wide/16 v21, 0x3e8

    div-long v21, v19, v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v5, "date_modified"

    invoke-virtual {v3, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 130
    array-length v1, v7

    int-to-float v1, v1

    add-float/2addr v4, v1

    .line 131
    array-length v1, v6

    int-to-float v1, v1

    add-float/2addr v4, v1

    .line 132
    array-length v1, v9

    int-to-float v1, v1

    add-float/2addr v4, v1

    .line 133
    array-length v1, v14

    int-to-float v1, v1

    add-float/2addr v4, v1

    .line 134
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v5, "_size"

    invoke-virtual {v3, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 135
    invoke-virtual {v2, v10, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 138
    .end local v10    # "uri":Landroid/net/Uri;
    .end local v19    # "date":J
    .restart local v1    # "imageUri":Landroid/net/Uri;
    :goto_1
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    invoke-virtual {v2, v5}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v5

    .line 140
    .local v5, "outputStream":Ljava/io/OutputStream;
    new-instance v10, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v10, v5}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 141
    .local v10, "streamZip":Ljava/util/zip/ZipOutputStream;
    new-instance v12, Ljava/util/zip/ZipEntry;

    const-string v15, "mimetype"

    invoke-direct {v12, v15}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 142
    .local v12, "mimetypeEntry":Ljava/util/zip/ZipEntry;
    const/16 v15, 0x8

    invoke-virtual {v12, v15}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    .line 144
    invoke-virtual {v10, v12}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 145
    array-length v15, v6

    const/4 v0, 0x0

    invoke-virtual {v10, v6, v0, v15}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    .line 146
    invoke-virtual {v10}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 148
    new-instance v0, Ljava/util/zip/ZipEntry;

    const-string v15, "stack.xml"

    invoke-direct {v0, v15}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 149
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    const/4 v15, 0x0

    invoke-virtual {v10, v7, v15, v0}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    .line 150
    invoke-virtual {v10}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 152
    const/4 v0, 0x0

    .line 153
    .local v0, "counter":I
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v2, v17

    check-cast v2, Landroid/graphics/Bitmap;

    .line 154
    .local v2, "current":Landroid/graphics/Bitmap;
    new-instance v17, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v17 .. v17}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object/from16 v19, v17

    .line 155
    .local v19, "bos":Ljava/io/ByteArrayOutputStream;
    move-object/from16 v17, v3

    .end local v3    # "contentValues":Landroid/content/ContentValues;
    .local v17, "contentValues":Landroid/content/ContentValues;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    move/from16 v20, v4

    move-object/from16 v16, v6

    move-object/from16 v4, v19

    const/16 v6, 0x64

    .end local v6    # "mimeByteArray":[B
    .end local v19    # "bos":Ljava/io/ByteArrayOutputStream;
    .local v4, "bos":Ljava/io/ByteArrayOutputStream;
    .local v16, "mimeByteArray":[B
    .local v20, "wholeSize":F
    invoke-virtual {v2, v3, v6, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 156
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 158
    .local v3, "byteArray":[B
    new-instance v6, Ljava/util/zip/ZipEntry;

    move-object/from16 v21, v2

    .end local v2    # "current":Landroid/graphics/Bitmap;
    .local v21, "current":Landroid/graphics/Bitmap;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v4

    .end local v4    # "bos":Ljava/io/ByteArrayOutputStream;
    .local v22, "bos":Ljava/io/ByteArrayOutputStream;
    const-string v4, "data/layer"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ".png"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 159
    array-length v2, v3

    const/4 v4, 0x0

    invoke-virtual {v10, v3, v4, v2}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    .line 160
    invoke-virtual {v10}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 161
    nop

    .end local v3    # "byteArray":[B
    .end local v21    # "current":Landroid/graphics/Bitmap;
    .end local v22    # "bos":Ljava/io/ByteArrayOutputStream;
    add-int/lit8 v0, v0, 0x1

    .line 162
    move-object/from16 v2, p3

    move-object/from16 v6, v16

    move-object/from16 v3, v17

    move/from16 v4, v20

    goto :goto_2

    .line 164
    .end local v16    # "mimeByteArray":[B
    .end local v17    # "contentValues":Landroid/content/ContentValues;
    .end local v20    # "wholeSize":F
    .local v3, "contentValues":Landroid/content/ContentValues;
    .local v4, "wholeSize":F
    .restart local v6    # "mimeByteArray":[B
    :cond_2
    move-object/from16 v17, v3

    move/from16 v20, v4

    .end local v3    # "contentValues":Landroid/content/ContentValues;
    .end local v4    # "wholeSize":F
    .restart local v17    # "contentValues":Landroid/content/ContentValues;
    .restart local v20    # "wholeSize":F
    new-instance v2, Ljava/util/zip/ZipEntry;

    const-string v3, "Thumbnails/thumbnail.png"

    invoke-direct {v2, v3}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 165
    array-length v2, v14

    const/4 v3, 0x0

    invoke-virtual {v10, v14, v3, v2}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    .line 166
    invoke-virtual {v10}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 168
    new-instance v2, Ljava/util/zip/ZipEntry;

    const-string v4, "mergedimage.png"

    invoke-direct {v2, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 169
    array-length v2, v9

    invoke-virtual {v10, v9, v3, v2}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    .line 170
    invoke-virtual {v10}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 171
    invoke-virtual {v10}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 172
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 174
    return-object v1
.end method

.method private static getXmlStack(Ljava/util/List;)[B
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)[B"
        }
    .end annotation

    .line 179
    .local p0, "bitmapList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    const-string v0, "layer"

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 181
    .local v1, "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 183
    .local v3, "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v4

    .line 184
    .local v4, "doc":Lorg/w3c/dom/Document;
    const-string v5, "image"

    invoke-interface {v4, v5}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    .line 185
    .local v5, "rootElement":Lorg/w3c/dom/Element;
    const-string v6, "version"

    invoke-interface {v4, v6}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v6

    .line 186
    .local v6, "attr1":Lorg/w3c/dom/Attr;
    const-string v7, "w"

    invoke-interface {v4, v7}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v7

    .line 187
    .local v7, "attr2":Lorg/w3c/dom/Attr;
    const-string v8, "h"

    invoke-interface {v4, v8}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v8

    .line 189
    .local v8, "attr3":Lorg/w3c/dom/Attr;
    const-string v9, "0.0.1"

    invoke-interface {v6, v9}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    .line 190
    const/4 v9, 0x0

    invoke-interface {p0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    .line 191
    invoke-interface {p0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    .line 193
    invoke-interface {v5, v6}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    .line 194
    invoke-interface {v5, v7}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    .line 195
    invoke-interface {v5, v8}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    .line 196
    invoke-interface {v4, v5}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 198
    const-string v9, "stack"

    invoke-interface {v4, v9}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v9

    .line 199
    .local v9, "stack":Lorg/w3c/dom/Element;
    invoke-interface {v5, v9}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 201
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    .local v10, "i":I
    :goto_0
    if-ltz v10, :cond_0

    .line 202
    invoke-interface {v4, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v11

    .line 204
    .local v11, "layer":Lorg/w3c/dom/Element;
    const-string v12, "name"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v12, "src"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "data/layer"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ".png"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-interface {v9, v11}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 201
    nop

    .end local v11    # "layer":Lorg/w3c/dom/Element;
    add-int/lit8 v10, v10, -0x1

    goto :goto_0

    .line 209
    .end local v10    # "i":I
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 210
    .local v0, "stream":Ljava/io/ByteArrayOutputStream;
    new-instance v10, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v10, v0}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    .line 212
    .local v10, "result":Ljavax/xml/transform/stream/StreamResult;
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v11

    .line 213
    .local v11, "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual {v11}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v12

    .line 214
    .local v12, "transformer":Ljavax/xml/transform/Transformer;
    new-instance v13, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v13, v4}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 216
    .local v13, "source":Ljavax/xml/transform/dom/DOMSource;
    invoke-virtual {v12, v13, v10}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 218
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 222
    .end local v0    # "stream":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v5    # "rootElement":Lorg/w3c/dom/Element;
    .end local v6    # "attr1":Lorg/w3c/dom/Attr;
    .end local v7    # "attr2":Lorg/w3c/dom/Attr;
    .end local v8    # "attr3":Lorg/w3c/dom/Attr;
    .end local v9    # "stack":Lorg/w3c/dom/Element;
    .end local v10    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v11    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    .end local v12    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v13    # "source":Ljavax/xml/transform/dom/DOMSource;
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Ljavax/xml/transform/TransformerException;
    sget-object v3, Lorg/catrobat/paintroid/iotasks/OpenRasterFileFormatConversion;->TAG:Ljava/lang/String;

    const-string v4, "Could not transform Xml file."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    return-object v2

    .line 219
    .end local v0    # "e":Ljavax/xml/transform/TransformerException;
    :catch_1
    move-exception v0

    .line 220
    .local v0, "e":Ljavax/xml/parsers/ParserConfigurationException;
    sget-object v3, Lorg/catrobat/paintroid/iotasks/OpenRasterFileFormatConversion;->TAG:Ljava/lang/String;

    const-string v4, "Could not create document."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    return-object v2
.end method

.method public static importOraFile(Landroid/content/ContentResolver;Landroid/net/Uri;)Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;
    .locals 8
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 253
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 254
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 255
    .local v1, "inputStream":Ljava/io/InputStream;
    new-instance v2, Ljava/util/zip/ZipInputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 256
    .local v2, "zipInput":Ljava/util/zip/ZipInputStream;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 257
    .local v3, "bitmapList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v4

    .line 259
    .local v4, "current":Ljava/util/zip/ZipEntry;
    :goto_0
    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 260
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "data/(.*).png"

    invoke-virtual {v6, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 261
    invoke-static {v2, v5, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v5}, Lorg/catrobat/paintroid/FileIO;->enableAlpha(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 262
    .local v5, "layerBitmap":Landroid/graphics/Bitmap;
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    .end local v5    # "layerBitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v4

    goto :goto_0

    .line 266
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x4

    if-gt v6, v7, :cond_2

    .line 269
    new-instance v6, Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;

    const/4 v7, 0x0

    invoke-direct {v6, v3, v5, v7}, Lorg/catrobat/paintroid/iotasks/BitmapReturnValue;-><init>(Ljava/util/List;Landroid/graphics/Bitmap;Z)V

    return-object v6

    .line 267
    :cond_2
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Bitmap list is wrong!"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public static saveOraFileToUri(Ljava/util/List;Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/ContentResolver;)Landroid/net/Uri;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "bitmapAllLayers"    # Landroid/graphics/Bitmap;
    .param p4, "resolver"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            "Landroid/content/ContentResolver;",
            ")",
            "Landroid/net/Uri;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    .local p0, "bitmapList":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "No file to delete was found!"

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_1

    .line 231
    const-string v0, "_id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    .line 232
    .local v4, "projection":[Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p4

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 233
    .local v2, "c":Landroid/database/Cursor;
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 234
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 235
    .local v0, "id":J
    sget-object v3, Landroid/provider/MediaStore$Downloads;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 236
    .local v3, "deleteUri":Landroid/net/Uri;
    const/4 v5, 0x0

    invoke-virtual {p4, v3, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 237
    .end local v0    # "id":J
    .end local v3    # "deleteUri":Landroid/net/Uri;
    nop

    .line 240
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 241
    .end local v2    # "c":Landroid/database/Cursor;
    .end local v4    # "projection":[Ljava/lang/String;
    goto :goto_0

    .line 238
    .restart local v2    # "c":Landroid/database/Cursor;
    .restart local v4    # "projection":[Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 242
    .end local v2    # "c":Landroid/database/Cursor;
    .end local v4    # "projection":[Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 243
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    .line 244
    .local v2, "isDeleted":Z
    if-eqz v2, :cond_2

    .line 249
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "isDeleted":Z
    :goto_0
    invoke-static {p0, p2, p3, p4}, Lorg/catrobat/paintroid/iotasks/OpenRasterFileFormatConversion;->exportToOraFile(Ljava/util/List;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/ContentResolver;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 245
    .restart local v0    # "file":Ljava/io/File;
    .restart local v2    # "isDeleted":Z
    :cond_2
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method
