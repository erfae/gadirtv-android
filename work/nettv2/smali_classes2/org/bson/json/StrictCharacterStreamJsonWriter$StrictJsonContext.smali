.class Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;
.super Ljava/lang/Object;
.source "StrictCharacterStreamJsonWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bson/json/StrictCharacterStreamJsonWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StrictJsonContext"
.end annotation


# instance fields
.field private final contextType:Lorg/bson/json/StrictCharacterStreamJsonWriter$JsonContextType;

.field private hasElements:Z

.field private final indentation:Ljava/lang/String;

.field private final parentContext:Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;


# direct methods
.method public constructor <init>(Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;Lorg/bson/json/StrictCharacterStreamJsonWriter$JsonContextType;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;->parentContext:Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;

    .line 3
    iput-object p2, p0, Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;->contextType:Lorg/bson/json/StrictCharacterStreamJsonWriter$JsonContextType;

    if-nez p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;->indentation:Ljava/lang/String;

    .line 5
    invoke-static {p2, p1, p3}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 6
    :goto_0
    iput-object p3, p0, Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;->indentation:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000(Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;->hasElements:Z

    return p0
.end method

.method public static synthetic access$002(Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;->hasElements:Z

    return-void
.end method

.method public static synthetic access$100(Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;->indentation:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$200(Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;)Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;
    .locals 0

    iget-object p0, p0, Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;->parentContext:Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;

    return-object p0
.end method

.method public static synthetic access$300(Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;)Lorg/bson/json/StrictCharacterStreamJsonWriter$JsonContextType;
    .locals 0

    iget-object p0, p0, Lorg/bson/json/StrictCharacterStreamJsonWriter$StrictJsonContext;->contextType:Lorg/bson/json/StrictCharacterStreamJsonWriter$JsonContextType;

    return-object p0
.end method
