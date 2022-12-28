resource "aws_vpc" "tf_vpc" {
  cidr_block = "192.168.0.0/16"

  tags = {
    Name = "terraform_test"
  }
}
resource "aws_subnet" "tf_public_sb_a" {
  vpc_id = aws_vpc.tf_vpc.id
  cidr_block = "192.168.1.0/24"
  availability_zone = "ap-northeast-2a"
  tags = {
    Name = "subnet-terraform"
  }
}

resource "aws_internet_gateway" "tf_igw" {
  vpc_id = aws_vpc.tf_vpc.id

  tags = {
    Name = "tf_igw"
  }
}


// 라우트 테이블
resource "aws_route_table" "tf_pulibc_rt" {
  vpc_id = aws_vpc.tf_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.tf_igw.id
  }


  tags = {
    Name = "tf_pulibc_rt"
  }
}

resource "aws_route_table_association" "tf_pulibc_route_table_association" {
  subnet_id = aws_subnet.tf_public_sb_a.id
  route_table_id = aws_route_table.tf_pulibc_rt.id
  
}