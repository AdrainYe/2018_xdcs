.class public Lichunqiu/get1t/crack1t/check;
.super Ljava/lang/Object;
.source "check.java"


# instance fields
.field public flag:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string v0, "this_is_not_flaggggg"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lichunqiu/get1t/crack1t/check;->flag:[B

    return-void
.end method


# virtual methods
.method public checkFormat(Ljava/lang/String;)Z
    .locals 6
    .param p1, "Key"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 44
    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, "front":Ljava/lang/String;
    const/16 v4, 0x19

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "behind":Ljava/lang/String;
    new-array v4, v5, [B

    fill-array-data v4, :array_0

    invoke-virtual {p0, v4}, Lichunqiu/get1t/crack1t/check;->decode([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 47
    new-array v4, v2, [B

    const/16 v5, 0x5d

    aput-byte v5, v4, v3

    invoke-virtual {p0, v4}, Lichunqiu/get1t/crack1t/check;->decode([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 49
    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0

    .line 46
    nop

    :array_0
    .array-data 1
        0x46t
        0x4ct
        0x41t
        0x47t
        0x5bt
    .end array-data
.end method

.method public checksn(Ljava/lang/String;)Z
    .locals 5
    .param p1, "a"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lichunqiu/get1t/crack1t/check;->encode(Ljava/lang/String;)[B

    move-result-object v1

    .line 54
    .local v1, "gg":[B
    const/16 v3, 0x14

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    invoke-virtual {p0, v3}, Lichunqiu/get1t/crack1t/check;->decode([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 55
    .local v0, "ff":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 56
    aget-byte v3, v1, v2

    aget-byte v4, v0, v2

    if-eq v3, v4, :cond_0

    .line 57
    const/4 v3, 0x0

    .line 59
    :goto_1
    return v3

    .line 55
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 59
    :cond_1
    const/4 v3, 0x1

    goto :goto_1

    .line 54
    :array_0
    .array-data 1
        0x65t
        0x2bt
        0x21t
        0x26t
        0x11t
        0x38t
        0x62t
        0xat
        0x11t
        0x21t
        0x65t
        0x1ct
        0x75t
        0x13t
        0x25t
        0x26t
        0x2bt
        0x31t
        0x76t
        0x2ct
    .end array-data
.end method

.method public decode([B)Ljava/lang/String;
    .locals 4
    .param p1, "a"    # [B

    .prologue
    .line 19
    const-string v1, ""

    .line 20
    .local v1, "str":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, p1, v0

    xor-int/lit8 v3, v3, 0x20

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 20
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 23
    :cond_0
    return-object v1
.end method

.method public encode(Ljava/lang/String;)[B
    .locals 8
    .param p1, "a"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    new-array v5, v6, [B

    .line 28
    .local v5, "tt":[B
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 29
    .local v0, "ff":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 30
    iget-object v6, p0, Lichunqiu/get1t/crack1t/check;->flag:[B

    aget-byte v6, v6, v1

    iget-object v7, p0, Lichunqiu/get1t/crack1t/check;->flag:[B

    aget-byte v7, v7, v1

    invoke-virtual {p0, v6, v7}, Lichunqiu/get1t/crack1t/check;->what(BB)B

    move-result v2

    .line 31
    .local v2, "m":B
    aget-byte v6, v0, v1

    aget-byte v7, v0, v1

    invoke-virtual {p0, v6, v7}, Lichunqiu/get1t/crack1t/check;->what(BB)B

    move-result v3

    .line 32
    .local v3, "n":B
    iget-object v6, p0, Lichunqiu/get1t/crack1t/check;->flag:[B

    aget-byte v6, v6, v1

    aget-byte v7, v0, v1

    invoke-virtual {p0, v6, v7}, Lichunqiu/get1t/crack1t/check;->what(BB)B

    move-result v4

    .line 33
    .local v4, "nn":B
    invoke-virtual {p0, v2, v3}, Lichunqiu/get1t/crack1t/check;->what(BB)B

    move-result v2

    .line 34
    invoke-virtual {p0, v2, v4}, Lichunqiu/get1t/crack1t/check;->what(BB)B

    move-result v6

    aput-byte v6, v0, v1

    .line 29
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 36
    .end local v2    # "m":B
    .end local v3    # "n":B
    .end local v4    # "nn":B
    :cond_0
    return-object v0
.end method

.method public mainCheck(Ljava/lang/String;)Z
    .locals 3
    .param p1, "Key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1a

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, p1}, Lichunqiu/get1t/crack1t/check;->checkFormat(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 15
    :cond_0
    :goto_0
    return v0

    .line 13
    :cond_1
    const/4 v1, 0x5

    const/16 v2, 0x19

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lichunqiu/get1t/crack1t/check;->checksn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 15
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public what(BB)B
    .locals 2
    .param p1, "a"    # B
    .param p2, "b"    # B

    .prologue
    .line 40
    xor-int/lit8 v0, p1, -0x1

    xor-int/lit8 v1, p2, -0x1

    or-int/2addr v0, v1

    int-to-byte v0, v0

    return v0
.end method
