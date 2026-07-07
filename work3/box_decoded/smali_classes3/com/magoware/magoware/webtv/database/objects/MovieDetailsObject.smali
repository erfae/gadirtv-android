.class public Lcom/magoware/magoware/webtv/database/objects/MovieDetailsObject;
.super Lcom/framework/utilityframe/database/DatabaseObject;
.source "MovieDetailsObject.java"


# instance fields
.field public TokenUrl:Ljava/lang/String;

.field public default_language:Ljava/lang/String;

.field public encryption:Ljava/lang/String;

.field public encryption_url:Ljava/lang/String;

.field public stream_format:Ljava/lang/String;

.field public stream_url:Ljava/lang/String;

.field public subtitles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/magoware/magoware/webtv/database/objects/SubtitleObject;",
            ">;"
        }
    .end annotation
.end field

.field public token:Ljava/lang/String;

.field public trailer_url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 25
    const-class v0, Lcom/magoware/magoware/webtv/database/objects/MovieDetailsObject;

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/framework/utilityframe/database/DatabaseObject;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 26
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/MovieDetailsObject;->stream_url:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/MovieDetailsObject;->token:Ljava/lang/String;

    .line 28
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/MovieDetailsObject;->TokenUrl:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/MovieDetailsObject;->encryption:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/MovieDetailsObject;->encryption_url:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/MovieDetailsObject;->stream_format:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/magoware/magoware/webtv/database/objects/MovieDetailsObject;->subtitles:Ljava/util/ArrayList;

    .line 33
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/MovieDetailsObject;->default_language:Ljava/lang/String;

    .line 34
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/MovieDetailsObject;->trailer_url:Ljava/lang/String;

    return-void
.end method
