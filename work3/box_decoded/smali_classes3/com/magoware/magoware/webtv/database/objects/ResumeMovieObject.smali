.class public Lcom/magoware/magoware/webtv/database/objects/ResumeMovieObject;
.super Lcom/framework/utilityframe/database/DatabaseObject;
.source "ResumeMovieObject.java"


# instance fields
.field public resume_movie:Z

.field public resume_position:I

.field public vod_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    const-class v0, Lcom/magoware/magoware/webtv/database/objects/ResumeMovieObject;

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/framework/utilityframe/database/DatabaseObject;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 13
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/ResumeMovieObject;->vod_id:Ljava/lang/String;

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/database/objects/ResumeMovieObject;->resume_movie:Z

    .line 15
    iput v0, p0, Lcom/magoware/magoware/webtv/database/objects/ResumeMovieObject;->resume_position:I

    return-void
.end method
