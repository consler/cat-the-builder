.class public final Lorg/catrobat/catroid/nfc/NfcHandler;
.super Ljava/lang/Object;
.source "NfcHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final UTF8_CHARSET:Ljava/nio/charset/Charset;

.field private static nfcTagId:Ljava/lang/String;

.field private static nfcTagMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-class v0, Lorg/catrobat/catroid/nfc/NfcHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/nfc/NfcHandler;->TAG:Ljava/lang/String;

    .line 48
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/nfc/NfcHandler;->UTF8_CHARSET:Ljava/nio/charset/Charset;

    .line 49
    const-string v0, "0x0"

    sput-object v0, Lorg/catrobat/catroid/nfc/NfcHandler;->nfcTagId:Ljava/lang/String;

    .line 50
    const-string v0, ""

    sput-object v0, Lorg/catrobat/catroid/nfc/NfcHandler;->nfcTagMessage:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public static byteArrayToHex([B)Ljava/lang/String;
    .locals 7
    .param p0, "a"    # [B

    .line 141
    if-nez p0, :cond_0

    .line 142
    const/4 v0, 0x0

    return-object v0

    .line 144
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .local v0, "sb":Ljava/lang/StringBuilder;
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-byte v4, p0, v3

    .line 146
    .local v4, "b":B
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    and-int/lit16 v6, v4, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v6, "%02x"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .end local v4    # "b":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 148
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static createMessage(Ljava/lang/String;I)Landroid/nfc/NdefMessage;
    .locals 9
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "spinnerSelection"    # I

    .line 175
    const/4 v0, 0x0

    .line 180
    .local v0, "tnf":S
    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 252
    invoke-static {p0}, Landroid/nfc/NdefRecord;->createUri(Ljava/lang/String;)Landroid/nfc/NdefRecord;

    move-result-object v6

    .local v6, "ndefRecord":Landroid/nfc/NdefRecord;
    goto/16 :goto_0

    .line 182
    .end local v6    # "ndefRecord":Landroid/nfc/NdefRecord;
    :pswitch_0
    const/4 v0, 0x0

    .line 183
    new-array v3, v2, [B

    .line 184
    .local v3, "type":[B
    new-array v4, v2, [B

    .line 185
    .local v4, "id":[B
    new-array v5, v2, [B

    .line 186
    .local v5, "payload":[B
    new-instance v6, Landroid/nfc/NdefRecord;

    invoke-direct {v6, v0, v3, v4, v5}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    .line 187
    .restart local v6    # "ndefRecord":Landroid/nfc/NdefRecord;
    goto/16 :goto_0

    .line 246
    .end local v3    # "type":[B
    .end local v4    # "id":[B
    .end local v5    # "payload":[B
    .end local v6    # "ndefRecord":Landroid/nfc/NdefRecord;
    :pswitch_1
    const-string v3, "catrobat.com"

    .line 247
    .local v3, "domain":Ljava/lang/String;
    const-string v4, "catroid"

    .line 248
    .local v4, "externalType":Ljava/lang/String;
    sget-object v5, Lorg/catrobat/catroid/nfc/NfcHandler;->UTF8_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    .line 249
    .local v5, "data":[B
    invoke-static {v3, v4, v5}, Landroid/nfc/NdefRecord;->createExternal(Ljava/lang/String;Ljava/lang/String;[B)Landroid/nfc/NdefRecord;

    move-result-object v6

    .line 250
    .restart local v6    # "ndefRecord":Landroid/nfc/NdefRecord;
    goto/16 :goto_0

    .line 217
    .end local v3    # "domain":Ljava/lang/String;
    .end local v4    # "externalType":Ljava/lang/String;
    .end local v5    # "data":[B
    .end local v6    # "ndefRecord":Landroid/nfc/NdefRecord;
    :pswitch_2
    const/4 v0, 0x1

    .line 218
    sget-object v3, Landroid/nfc/NdefRecord;->RTD_URI:[B

    .line 219
    .local v3, "type":[B
    new-array v4, v2, [B

    .line 220
    .local v4, "id":[B
    sget-object v5, Lorg/catrobat/catroid/nfc/NfcHandler;->UTF8_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    .line 221
    .local v5, "uriField":[B
    array-length v6, v5

    add-int/2addr v6, v1

    new-array v6, v6, [B

    .line 222
    .local v6, "payload":[B
    const/4 v7, 0x6

    aput-byte v7, v6, v2

    .line 223
    array-length v7, v5

    invoke-static {v5, v2, v6, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 224
    new-instance v7, Landroid/nfc/NdefRecord;

    invoke-direct {v7, v0, v3, v4, v6}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    .line 225
    .local v7, "ndefRecord":Landroid/nfc/NdefRecord;
    move-object v6, v7

    goto/16 :goto_0

    .line 227
    .end local v3    # "type":[B
    .end local v4    # "id":[B
    .end local v5    # "uriField":[B
    .end local v6    # "payload":[B
    .end local v7    # "ndefRecord":Landroid/nfc/NdefRecord;
    :pswitch_3
    const/4 v0, 0x1

    .line 228
    sget-object v3, Landroid/nfc/NdefRecord;->RTD_URI:[B

    .line 229
    .restart local v3    # "type":[B
    new-array v4, v2, [B

    .line 230
    .restart local v4    # "id":[B
    sget-object v5, Lorg/catrobat/catroid/nfc/NfcHandler;->UTF8_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    .line 231
    .restart local v5    # "uriField":[B
    array-length v6, v5

    add-int/2addr v6, v1

    new-array v6, v6, [B

    .line 232
    .restart local v6    # "payload":[B
    const/4 v7, 0x5

    aput-byte v7, v6, v2

    .line 233
    array-length v7, v5

    invoke-static {v5, v2, v6, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 234
    new-instance v7, Landroid/nfc/NdefRecord;

    invoke-direct {v7, v0, v3, v4, v6}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    .line 235
    .restart local v7    # "ndefRecord":Landroid/nfc/NdefRecord;
    move-object v6, v7

    goto/16 :goto_0

    .line 237
    .end local v3    # "type":[B
    .end local v4    # "id":[B
    .end local v5    # "uriField":[B
    .end local v6    # "payload":[B
    .end local v7    # "ndefRecord":Landroid/nfc/NdefRecord;
    :pswitch_4
    const/4 v0, 0x4

    .line 238
    sget-object v3, Lorg/catrobat/catroid/nfc/NfcHandler;->UTF8_CHARSET:Ljava/nio/charset/Charset;

    const-string v4, "nfclab.com:smsService"

    invoke-virtual {v4, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    .line 239
    .restart local v3    # "type":[B
    new-array v4, v2, [B

    .line 240
    .restart local v4    # "id":[B
    const-string v5, "SMS from Catrobat"

    .line 241
    .local v5, "textMessage":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sms:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "?body="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 242
    .local v6, "smsMessage":Ljava/lang/String;
    sget-object v7, Lorg/catrobat/catroid/nfc/NfcHandler;->UTF8_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    .line 243
    .local v7, "payload":[B
    new-instance v8, Landroid/nfc/NdefRecord;

    invoke-direct {v8, v0, v3, v4, v7}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    .line 244
    .local v8, "ndefRecord":Landroid/nfc/NdefRecord;
    move-object v6, v8

    goto :goto_0

    .line 207
    .end local v3    # "type":[B
    .end local v4    # "id":[B
    .end local v5    # "textMessage":Ljava/lang/String;
    .end local v6    # "smsMessage":Ljava/lang/String;
    .end local v7    # "payload":[B
    .end local v8    # "ndefRecord":Landroid/nfc/NdefRecord;
    :pswitch_5
    const/4 v0, 0x1

    .line 208
    sget-object v3, Landroid/nfc/NdefRecord;->RTD_URI:[B

    .line 209
    .restart local v3    # "type":[B
    new-array v4, v2, [B

    .line 210
    .restart local v4    # "id":[B
    invoke-static {p0}, Lorg/catrobat/catroid/nfc/NfcHandler;->deleteProtocolPrefixIfExist(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/catrobat/catroid/nfc/NfcHandler;->UTF8_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    .line 211
    .local v5, "uriField":[B
    array-length v6, v5

    add-int/2addr v6, v1

    new-array v6, v6, [B

    .line 212
    .local v6, "payload":[B
    const/4 v7, 0x4

    aput-byte v7, v6, v2

    .line 213
    array-length v7, v5

    invoke-static {v5, v2, v6, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 214
    new-instance v7, Landroid/nfc/NdefRecord;

    invoke-direct {v7, v0, v3, v4, v6}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    .line 215
    .local v7, "ndefRecord":Landroid/nfc/NdefRecord;
    move-object v6, v7

    goto :goto_0

    .line 197
    .end local v3    # "type":[B
    .end local v4    # "id":[B
    .end local v5    # "uriField":[B
    .end local v6    # "payload":[B
    .end local v7    # "ndefRecord":Landroid/nfc/NdefRecord;
    :pswitch_6
    const/4 v0, 0x1

    .line 198
    sget-object v3, Landroid/nfc/NdefRecord;->RTD_URI:[B

    .line 199
    .restart local v3    # "type":[B
    new-array v4, v2, [B

    .line 200
    .restart local v4    # "id":[B
    invoke-static {p0}, Lorg/catrobat/catroid/nfc/NfcHandler;->deleteProtocolPrefixIfExist(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/catrobat/catroid/nfc/NfcHandler;->UTF8_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    .line 201
    .restart local v5    # "uriField":[B
    array-length v6, v5

    add-int/2addr v6, v1

    new-array v6, v6, [B

    .line 202
    .restart local v6    # "payload":[B
    const/4 v7, 0x3

    aput-byte v7, v6, v2

    .line 203
    array-length v7, v5

    invoke-static {v5, v2, v6, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 204
    new-instance v7, Landroid/nfc/NdefRecord;

    invoke-direct {v7, v0, v3, v4, v6}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    .line 205
    .restart local v7    # "ndefRecord":Landroid/nfc/NdefRecord;
    move-object v6, v7

    goto :goto_0

    .line 189
    .end local v3    # "type":[B
    .end local v4    # "id":[B
    .end local v5    # "uriField":[B
    .end local v6    # "payload":[B
    .end local v7    # "ndefRecord":Landroid/nfc/NdefRecord;
    :pswitch_7
    const/4 v0, 0x2

    .line 190
    const-string v3, "text/plain"

    .line 191
    .local v3, "mimeType":Ljava/lang/String;
    sget-object v4, Lorg/catrobat/catroid/nfc/NfcHandler;->UTF8_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    .line 192
    .local v4, "type":[B
    new-array v5, v2, [B

    .line 193
    .local v5, "id":[B
    sget-object v6, Lorg/catrobat/catroid/nfc/NfcHandler;->UTF8_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    .line 194
    .restart local v6    # "payload":[B
    new-instance v7, Landroid/nfc/NdefRecord;

    invoke-direct {v7, v0, v4, v5, v6}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    .line 195
    .restart local v7    # "ndefRecord":Landroid/nfc/NdefRecord;
    move-object v6, v7

    .line 254
    .end local v3    # "mimeType":Ljava/lang/String;
    .end local v4    # "type":[B
    .end local v5    # "id":[B
    .end local v7    # "ndefRecord":Landroid/nfc/NdefRecord;
    .local v6, "ndefRecord":Landroid/nfc/NdefRecord;
    :goto_0
    new-instance v3, Landroid/nfc/NdefMessage;

    new-array v1, v1, [Landroid/nfc/NdefRecord;

    aput-object v6, v1, v2

    invoke-direct {v3, v1}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static deleteProtocolPrefixIfExist(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .line 258
    const-string v0, "^\\w+://"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static fireNfcEvents(Ljava/lang/String;)V
    .locals 5
    .param p0, "uid"    # Ljava/lang/String;

    .line 110
    new-instance v0, Lorg/catrobat/catroid/content/eventids/NfcEventId;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/content/eventids/NfcEventId;-><init>(Ljava/lang/String;)V

    .line 111
    .local v0, "nfcEventId":Lorg/catrobat/catroid/content/eventids/EventId;
    new-instance v1, Lorg/catrobat/catroid/content/EventWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/catrobat/catroid/content/EventWrapper;-><init>(Lorg/catrobat/catroid/content/eventids/EventId;Z)V

    .line 112
    .local v1, "nfcEvent":Lorg/catrobat/catroid/content/EventWrapper;
    new-instance v3, Lorg/catrobat/catroid/content/eventids/EventId;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Lorg/catrobat/catroid/content/eventids/EventId;-><init>(I)V

    .line 113
    .local v3, "anyNfcEventId":Lorg/catrobat/catroid/content/eventids/EventId;
    new-instance v4, Lorg/catrobat/catroid/content/EventWrapper;

    invoke-direct {v4, v3, v2}, Lorg/catrobat/catroid/content/EventWrapper;-><init>(Lorg/catrobat/catroid/content/eventids/EventId;Z)V

    move-object v2, v4

    .line 115
    .local v2, "anyNfcEvent":Lorg/catrobat/catroid/content/EventWrapper;
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v4

    .line 116
    .local v4, "currentProject":Lorg/catrobat/catroid/content/Project;
    invoke-virtual {v4, v1}, Lorg/catrobat/catroid/content/Project;->fireToAllSprites(Lorg/catrobat/catroid/content/EventWrapper;)V

    .line 117
    invoke-virtual {v4, v2}, Lorg/catrobat/catroid/content/Project;->fireToAllSprites(Lorg/catrobat/catroid/content/EventWrapper;)V

    .line 118
    return-void
.end method

.method public static getLastNfcTagId()Ljava/lang/String;
    .locals 1

    .line 129
    sget-object v0, Lorg/catrobat/catroid/nfc/NfcHandler;->nfcTagId:Ljava/lang/String;

    return-object v0
.end method

.method public static getLastNfcTagMessage()Ljava/lang/Object;
    .locals 1

    .line 125
    sget-object v0, Lorg/catrobat/catroid/nfc/NfcHandler;->nfcTagMessage:Ljava/lang/String;

    return-object v0
.end method

.method public static getMessageFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 6
    .param p0, "intent"    # Landroid/content/Intent;

    .line 84
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.nfc.action.TAG_DISCOVERED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.nfc.action.TECH_DISCOVERED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 87
    :cond_0
    const-string v0, "android.nfc.extra.NDEF_MESSAGES"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 88
    .local v0, "rawMsgs":[Landroid/os/Parcelable;
    if-eqz v0, :cond_3

    .line 89
    array-length v1, v0

    new-array v1, v1, [Landroid/nfc/NdefMessage;

    .line 90
    .local v1, "messages":[Landroid/nfc/NdefMessage;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 91
    aget-object v3, v0, v2

    check-cast v3, Landroid/nfc/NdefMessage;

    aput-object v3, v1, v2

    .line 90
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 93
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x0

    aget-object v3, v1, v2

    if-eqz v3, :cond_3

    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .local v3, "result":Ljava/lang/StringBuilder;
    aget-object v4, v1, v2

    invoke-virtual {v4}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v4

    .line 96
    .local v4, "payload":[B
    array-length v5, v4

    if-lez v5, :cond_2

    .line 97
    aget-byte v2, v4, v2

    invoke-static {v2}, Lorg/catrobat/catroid/nfc/NfcHandler;->payloadStartContainsText(B)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 98
    .restart local v2    # "i":I
    :goto_1
    array-length v5, v4

    if-ge v2, v5, :cond_2

    .line 99
    aget-byte v5, v4, v2

    int-to-char v5, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 98
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 102
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 106
    .end local v0    # "rawMsgs":[Landroid/os/Parcelable;
    .end local v1    # "messages":[Landroid/nfc/NdefMessage;
    .end local v3    # "result":Ljava/lang/StringBuilder;
    .end local v4    # "payload":[B
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getTagIdFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 5
    .param p0, "intent"    # Landroid/content/Intent;

    .line 69
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.nfc.action.TAG_DISCOVERED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 70
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 71
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.nfc.action.TECH_DISCOVERED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 72
    :cond_1
    :goto_0
    const-string v0, "android.nfc.extra.ID"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 74
    .local v0, "tagId":[B
    invoke-static {v0}, Lorg/catrobat/catroid/nfc/NfcHandler;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "uidHex":Ljava/lang/String;
    invoke-static {v1}, Lorg/catrobat/catroid/nfc/NfcHandler;->setLastNfcTagId(Ljava/lang/String;)V

    .line 77
    sget-object v2, Lorg/catrobat/catroid/nfc/NfcHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "read successful. uid = int: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-object v1
.end method

.method private static payloadStartContainsText(B)Z
    .locals 1
    .param p0, "payloadStart"    # B

    .line 121
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static processIntent(Landroid/content/Intent;)V
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .line 56
    if-nez p0, :cond_0

    .line 57
    return-void

    .line 60
    :cond_0
    invoke-static {p0}, Lorg/catrobat/catroid/nfc/NfcHandler;->getTagIdFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "uid":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 62
    invoke-static {v0}, Lorg/catrobat/catroid/nfc/NfcHandler;->setLastNfcTagId(Ljava/lang/String;)V

    .line 63
    invoke-static {p0}, Lorg/catrobat/catroid/nfc/NfcHandler;->getMessageFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/catrobat/catroid/nfc/NfcHandler;->setLastNfcTagMessage(Ljava/lang/String;)V

    .line 64
    invoke-static {v0}, Lorg/catrobat/catroid/nfc/NfcHandler;->fireNfcEvents(Ljava/lang/String;)V

    .line 66
    :cond_1
    return-void
.end method

.method public static setLastNfcTagId(Ljava/lang/String;)V
    .locals 0
    .param p0, "tagID"    # Ljava/lang/String;

    .line 133
    sput-object p0, Lorg/catrobat/catroid/nfc/NfcHandler;->nfcTagId:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public static setLastNfcTagMessage(Ljava/lang/String;)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;

    .line 137
    sput-object p0, Lorg/catrobat/catroid/nfc/NfcHandler;->nfcTagMessage:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public static writeTag(Landroid/nfc/Tag;Landroid/nfc/NdefMessage;)V
    .locals 3
    .param p0, "tag"    # Landroid/nfc/Tag;
    .param p1, "message"    # Landroid/nfc/NdefMessage;

    .line 152
    if-eqz p0, :cond_2

    .line 154
    :try_start_0
    invoke-static {p0}, Landroid/nfc/tech/Ndef;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/Ndef;

    move-result-object v0

    .line 155
    .local v0, "ndefTag":Landroid/nfc/tech/Ndef;
    if-nez v0, :cond_1

    .line 156
    invoke-static {p0}, Landroid/nfc/tech/NdefFormatable;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/NdefFormatable;

    move-result-object v1

    .line 157
    .local v1, "nForm":Landroid/nfc/tech/NdefFormatable;
    if-eqz v1, :cond_0

    .line 158
    invoke-virtual {v1}, Landroid/nfc/tech/NdefFormatable;->connect()V

    .line 159
    invoke-virtual {v1, p1}, Landroid/nfc/tech/NdefFormatable;->format(Landroid/nfc/NdefMessage;)V

    .line 160
    invoke-virtual {v1}, Landroid/nfc/tech/NdefFormatable;->close()V

    .line 162
    .end local v1    # "nForm":Landroid/nfc/tech/NdefFormatable;
    :cond_0
    goto :goto_0

    .line 163
    :cond_1
    invoke-virtual {v0}, Landroid/nfc/tech/Ndef;->connect()V

    .line 164
    invoke-virtual {v0, p1}, Landroid/nfc/tech/Ndef;->writeNdefMessage(Landroid/nfc/NdefMessage;)V

    .line 165
    invoke-virtual {v0}, Landroid/nfc/tech/Ndef;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/nfc/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .end local v0    # "ndefTag":Landroid/nfc/tech/Ndef;
    :goto_0
    goto :goto_2

    .line 167
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    sget-object v1, Lorg/catrobat/catroid/nfc/NfcHandler;->TAG:Ljava/lang/String;

    const-string v2, "Couldn\'t create message"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    return-void
.end method
