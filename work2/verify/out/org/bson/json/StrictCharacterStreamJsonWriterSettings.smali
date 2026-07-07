.class public final Lorg/bson/json/StrictCharacterStreamJsonWriterSettings;
.super Ljava/lang/Object;
.source "StrictCharacterStreamJsonWriterSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bson/json/StrictCharacterStreamJsonWriterSettings$Builder;
    }
.end annotation


# instance fields
.field private final indent:Z

.field private final indentCharacters:Ljava/lang/String;

.field private final maxLength:I

.field private final newLineCharacters:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lorg/bson/json/StrictCharacterStreamJsonWriterSettings$Builder;)V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    # getter for: Lorg/bson/json/StrictCharacterStreamJsonWriterSettings$Builder;->indent:Z
    invoke-static {p1}, Lorg/bson/json/StrictCharacterStreamJsonWriterSettings$Builder;->access$100(Lorg/bson/json/StrictCharacterStreamJsonWriterSettings$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/bson/json/StrictCharacterStreamJsonWriterSettings;->indent:Z

    .line 4
    # getter for: Lorg/bson/json/StrictCharacterStreamJsonWriterSettings$Builder;->newLineCharacters:Ljava/lang/String;
    invoke-static {p1}, Lorg/bson/json/StrictCharacterStreamJsonWriterSettings$Builder;->access$200(Lorg/bson/json/StrictCharacterStreamJsonWriterSettings$Builder;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    # getter for: Lorg/bson/json/StrictCharacterStreamJsonWriterSettings$Builder;->newLineCharacters:Ljava/lang/String;
    invoke-static {p1}, Lorg/bson/json/StrictCharacterStreamJsonWriterSettings$Builder;->access$200(Lorg/bson/json/StrictCharacterStreamJsonWriterSettings$Builder;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    :cond_14
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1a
    iput-object v0, p0, Lorg/bson/json/StrictCharacterStreamJsonWriterSettings;->newLineCharacters:Ljava/lang/String;

    .line 5
    # getter for: Lorg/bson/json/StrictCharacterStreamJsonWriterSettings$Builder;->indentCharacters:Ljava/lang/String;
    invoke-static {p1}, Lorg/bson/json/StrictCharacterStreamJsonWriterSettings$Builder;->access$300(Lorg/bson/json/StrictCharacterStreamJsonWriterSettings$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bson/json/StrictCharacterStreamJsonWriterSettings;->indentCharacters:Ljava/lang/String;

    .line 6
    # getter for: Lorg/bson/json/StrictCharacterStreamJsonWriterSettings$Builder;->maxLength:I
    invoke-static {p1}, Lorg/bson/json/StrictCharacterStreamJsonWriterSettings$Builder;->access$400(Lorg/bson/json/StrictCharacterStreamJsonWriterSettings$Builder;)I

    move-result p1

    iput p1, p0, Lorg/bson/json/StrictCharacterStreamJsonWriterSettings;->maxLength:I

    return-void
.end method

.method public synthetic constructor <init>(Lorg/bson/json/StrictCharacterStreamJsonWriterSettings$Builder;Lorg/bson/json/StrictCharacterStreamJsonWriterSettings$1;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lorg/bson/json/StrictCharacterStreamJsonWriterSettings;-><init>(Lorg/bson/json/StrictCharacterStreamJsonWriterSettings$Builder;)V

    return-void
.end method

.method public static builder()Lorg/bson/json/StrictCharacterStreamJsonWriterSettings$Builder;
    .registers 2

    new-instance v0, Lorg/bson/json/StrictCharacterStreamJsonWriterSettings$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bson/json/StrictCharacterStreamJsonWriterSettings$Builder;-><init>(Lorg/bson/json/StrictCharacterStreamJsonWriterSettings$1;)V

    return-object v0
.end method


# virtual methods
.method public getIndentCharacters()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/bson/json/StrictCharacterStreamJsonWriterSettings;->indentCharacters:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxLength()I
    .registers 2

    iget v0, p0, Lorg/bson/json/StrictCharacterStreamJsonWriterSettings;->maxLength:I

    return v0
.end method

.method public getNewLineCharacters()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/bson/json/StrictCharacterStreamJsonWriterSettings;->newLineCharacters:Ljava/lang/String;

    return-object v0
.end method

.method public isIndent()Z
    .registers 2

    iget-boolean v0, p0, Lorg/bson/json/StrictCharacterStreamJsonWriterSettings;->indent:Z

    return v0
.end method
