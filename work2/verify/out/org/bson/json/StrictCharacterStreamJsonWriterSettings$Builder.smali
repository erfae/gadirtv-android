.class public final Lorg/bson/json/StrictCharacterStreamJsonWriterSettings$Builder;
.super Ljava/lang/Object;
.source "StrictCharacterStreamJsonWriterSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bson/json/StrictCharacterStreamJsonWriterSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private indent:Z

.field private indentCharacters:Ljava/lang/String;

.field private maxLength:I

.field private newLineCharacters:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "line.separator"

    .line 3
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bson/json/StrictCharacterStreamJsonWriterSettings$Builder;->newLineCharacters:Ljava/lang/String;

    const-string v0, "  "

    .line 4
    iput-object v0, p0, Lorg/bson/json/StrictCharacterStreamJsonWriterSettings$Builder;->indentCharacters:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/bson/json/StrictCharacterStreamJsonWriterSettings$1;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lorg/bson/json/StrictCharacterStreamJsonWriterSettings$Builder;-><init>()V

    return-void
.end method

.method public static synthetic access$100(Lorg/bson/json/StrictCharacterStreamJsonWriterSettings$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lorg/bson/json/StrictCharacterStreamJsonWriterSettings$Builder;->indent:Z

    return p0
.end method

.method public static synthetic access$200(Lorg/bson/json/StrictCharacterStreamJsonWriterSettings$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lorg/bson/json/StrictCharacterStreamJsonWriterSettings$Builder;->newLineCharacters:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$300(Lorg/bson/json/StrictCharacterStreamJsonWriterSettings$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lorg/bson/json/StrictCharacterStreamJsonWriterSettings$Builder;->indentCharacters:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$400(Lorg/bson/json/StrictCharacterStreamJsonWriterSettings$Builder;)I
    .registers 1

    iget p0, p0, Lorg/bson/json/StrictCharacterStreamJsonWriterSettings$Builder;->maxLength:I

    return p0
.end method


# virtual methods
.method public build()Lorg/bson/json/StrictCharacterStreamJsonWriterSettings;
    .registers 3

    new-instance v0, Lorg/bson/json/StrictCharacterStreamJsonWriterSettings;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bson/json/StrictCharacterStreamJsonWriterSettings;-><init>(Lorg/bson/json/StrictCharacterStreamJsonWriterSettings$Builder;Lorg/bson/json/StrictCharacterStreamJsonWriterSettings$1;)V

    return-object v0
.end method

.method public indent(Z)Lorg/bson/json/StrictCharacterStreamJsonWriterSettings$Builder;
    .registers 2

    iput-boolean p1, p0, Lorg/bson/json/StrictCharacterStreamJsonWriterSettings$Builder;->indent:Z

    return-object p0
.end method

.method public indentCharacters(Ljava/lang/String;)Lorg/bson/json/StrictCharacterStreamJsonWriterSettings$Builder;
    .registers 3

    const-string v0, "indentCharacters"

    .line 1
    invoke-static {v0, p1}, Lorg/bson/assertions/Assertions;->notNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lorg/bson/json/StrictCharacterStreamJsonWriterSettings$Builder;->indentCharacters:Ljava/lang/String;

    return-object p0
.end method

.method public maxLength(I)Lorg/bson/json/StrictCharacterStreamJsonWriterSettings$Builder;
    .registers 2

    iput p1, p0, Lorg/bson/json/StrictCharacterStreamJsonWriterSettings$Builder;->maxLength:I

    return-object p0
.end method

.method public newLineCharacters(Ljava/lang/String;)Lorg/bson/json/StrictCharacterStreamJsonWriterSettings$Builder;
    .registers 3

    const-string v0, "newLineCharacters"

    .line 1
    invoke-static {v0, p1}, Lorg/bson/assertions/Assertions;->notNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lorg/bson/json/StrictCharacterStreamJsonWriterSettings$Builder;->newLineCharacters:Ljava/lang/String;

    return-object p0
.end method
